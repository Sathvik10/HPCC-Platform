#!/bin/bash
################################################################################
#    HPCC SYSTEMS software Copyright (C) 2017 HPCC Systems®.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
################################################################################

# Expects 
# 1:    target cluster
# 2:    logfile
source /opt/HPCCSystems/etc/init.d/hpcc_common
set_environmentvars
source /opt/HPCCSystems/sbin/hpcc_setenv ""

component=$(basename ${PWD})
if [[ $# -ne 2 ]]; then
    echo "Incorrect number of arguments to backup.sh ($@) [$$]" >> /var/log/HPCCSystems/${component}/backup.sh.err
    exit 1
fi

target="$1"
logfile="$2"
exec 2>/var/log/HPCCSystems/${component}/${target}.debug
set -x

trap "pkill -P $$;log \"${header} Terminated\";exit 0" SIGINT SIGTERM

which_pidof
header="${target} $$ --"

#safe as background job in subshell
if [[ ! -e "/var/lib/HPCCSystems/${component}/backupnode.conf" ]]; then
    log "${header} Cannot find backupnode.conf"
    exit 1
fi
cfg.parser /var/lib/HPCCSystems/${component}/backupnode.conf
cfg.section.${target}

# determine if this is a valid target for backupnode

nodegroup=${thorprimary}
if [[ -z "$thorprimary" ]]; then
    nodegroup=${thorname}
fi

log "${header} Backup will occur every ${interval} hours"
while true; do
    # background for non blocking wait
    sleep ${interval}h &
    wait
    log "${header} Starting backup of cluster"
    backupnode_data=$(/opt/HPCCSystems/bin/updtdalienv /etc/HPCCSystems/environment.xml -d data backupnode ${target})
    if [[ -z "${backupnode_data}" ]]; then
        log "${header} Cannot determine backupnode directory"  
        break
    fi
    # Fetch thorgroup slave machines from dali
    /opt/HPCCSystems/bin/daliadmin server=$daliserver dfsgroup ${target} /var/lib/HPCCSystems/${component}/${target}.slaves
    if [[ $? != 0 ]]; then
        log "${header} Failed to lookup dfsgroup"
        break
    fi
    backupnode_data=${backupnode_data}/${target}/last_backup
    backupnode_remotedata=//${thormaster}$backupnode_data

    mkdir -p ${backupnode_data}
    rm -f ${backupnode_data}/*.ERR
    rm -f ${backupnode_data}/*.DAT

    log "${header} Using backupnode directory $backupnode_data"
    log "${header} Reading slaves file /var/lib/HPCCSystems/${component}/${target}.slaves"
    log "${header} Scanning files from dali ..."


    /opt/HPCCSystems/bin/backupnode -O ${daliserver} ${nodegroup} ${backupnode_data} >> ${logfile} 2>&1
    if [[ $? -ne 0 ]]; then
        log "${header} Backupnode failed"
        break
    fi
    # maximum number of threads frunssh will be permitted to use (capped by # slaves)
    MAXTHREADS=1000

    fout=$(frunssh /var/lib/HPCCSystems/${component}/${target}.slaves "killall backupnode 1>/dev/null 2>&1" -i:$SSHidentityfile -u:$SSHusername -pe:$SSHpassword -t:$SSHtimeout -a:$SSHretries -n:$MAXTHREADS -b 2>&1)
    [[ ! -z "${fout}" ]] && log "${header} ${fout}"
    log "${header} frunssh /var/lib/HPCCSystems/${component}/${target}.slaves \"/bin/sh -c 'mkdir -p /var/log/HPCCSystems/${component}; mkdir -p /var/lib/HPCCSystems; /opt/HPCCSystems/bin/backupnode -T -X $backupnode_remotedata %n %c %a %x $2 > /var/log/HPCCSystems/${component}/${target}_backup_node_%n_${logpthtail}.log 2>&1'\" -i:$SSHidentityfile -u:$SSHusername -pe:$SSHpassword -t:$SSHtimeout -a:$SSHretries -n:$MAXTHREADS -b >> $logfile 2>&1"
    fout=$(frunssh /var/lib/HPCCSystems/${component}/${target}.slaves "/bin/sh -c 'mkdir -p /var/log/HPCCSystems/${component}; mkdir -p /var/lib/HPCCSystems; /opt/HPCCSystems/bin/backupnode -T -X $backupnode_remotedata %n %c %a %x $2 > /var/log/HPCCSystems/${component}/${target}_backup_node_%n_${logpthtail}.log 2>&1'" -i:$SSHidentityfile -u:$SSHusername -pe:$SSHpassword -t:$SSHtimeout -a:$SSHretries -n:$MAXTHREADS -b 2>&1)
    [[ ! -z "${fout}" ]] && log "${header} ${fout}"
    log "${header} Waiting for backup to complete"
    log "${header} nohup backupnode -W /var/lib/HPCCSystems/${component}/${target}.slaves $backupnode_data >> $logfile 2>&1 &"
    nohup backupnode -W /var/lib/HPCCSystems/${component}/${target}.slaves $backupnode_data >> $logfile 2>&1
    pid=`${PIDOF} backupnode`
    log "${header} Backupnode process $pid still continuing"
done
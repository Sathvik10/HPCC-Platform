#!/bin/bash
################################################################################
#    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems®.
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
#
# Usage: hpcc-run.sh [hpcc-init | dafilesrv] [-c component] <cmd>
#
# This is acomplished with a standard ssh command with the use of the
# runtime users id_rsa file.

INSTALL_DIR=/opt/HPCCSystems
CONFIG_DIR=/etc/HPCCSystems
ENV_XML_FILE=environment.xml
ENV_CONF_FILE=environment.conf
PID_DIR=/var/run/HPCCSystems
LOCK_DIR=/var/lock/HPCCSystems
LOG_DIR=/var/log/HPCCSystems
INIT_PATH=/etc/init.d


source  ${INSTALL_DIR}/etc/init.d/hpcc_common
source  ${INSTALL_DIR}/etc/init.d/init-functions
source  ${INSTALL_DIR}/etc/init.d/export-path

print_usage(){
    echo
    if use_systemd; then
        echo "usage: hpcc-run.sh [-c component] [-n concurrent] [-s] [-S] {start|stop|restart|status}"
    else #sysv init
        echo "usage: hpcc-run.sh [-c component] [-a {hpcc-init|dafilesrv}] [-n concurrent] [-s] [-S] {start|stop|stopall|restart|status|setup}"
        echo "  -a|--action: HPCC service name. Either hpcc-init (default) or dafilesrv."
        echo "  -c|--comp: HPCC component. For example, mydali, myroxie, mythor, etc."
    fi
    if use_systemd; then
        echo "  -c|--comp: HPCC component. For example, dali@mydali.service, roxie@myroxie.service, etc."
    fi
    echo "  -n|--concurrent: How many concurrent instances to run. The default is equal to the number of nodes present."
    echo "  -S|--sequentially: For the command to run sequentially. i.e. one host a time. (overrides -n)"
    echo "  -s|--save: Save the result to a file named by ip."
    echo "  -f|--force: Force kill orphaned process groups"
    echo "  -d|--debug: set debug flag for hpcc-init on each node in the cluster"
    echo
    end 1
}

getIPS(){
    if [[ -z "${comp}" ]]; then
        IPS=`${INSTALL_DIR}/sbin/configgen -env ${envfile} -machines | awk -F, '{print \$1}'  | sort | uniq`
    else
        if use_systemd; then
            patf="*@"
            patb=".service"
            tmp_comp=${comp##$patf}
            tmp_comp=${tmp_comp%%$patb}
        else
            tmp_comp=${comp}
        fi
        IPS=`${INSTALL_DIR}/sbin/configgen -env ${envfile} -listall | grep -e "${tmp_comp}" | awk -F, '{ print \$3 }' | sort | uniq`
        if [[ -z "${IPS}" ]]; then
            log_failure_msg "Component ${tmp_comp} not found"
            print_usage
            end 1
        fi
    fi
}

getDali(){
    DIP=`${INSTALL_DIR}/sbin/configgen -env ${envfile} -listall | grep Dali | awk -F, '{print \$3}'  | sort | uniq`
}

createIPListFile(){
    local _output=$1
    echo "$IPS" > $_output
}

createIPListFileExcludeDIP(){
    local _input=$1
    local _output=$2
    grep -vwF "$DIP" $_input > $_output 2> /dev/null
}

doOneIP(){
    local _ip=$1
    local _action=$2
    shift 2
    local _args=$(echo "$@" | tr '\n' ' ')

    if ping -c 1 -w 5 -n $_ip > /dev/null 2>&1; then
        #echo "$_ip: Host is alive."
        local CAN_SSH="`ssh -i $home/$user/.ssh/id_rsa -o BatchMode=yes -o LogLevel=QUIET -o StrictHostKeyChecking=no $user@$_ip exit > /dev/null 2>&1; echo $?`"
        if [[ "$CAN_SSH" -eq 255 ]]; then
            echo "$_ip: Cannot SSH to host."
            return 1
        else
            hpccStatusFile=/tmp/hpcc_status_$$
            if use_systemd; then
                if [[ -z "${comp}" ]]; then
                    local CMD="sudo systemctl ${arg} hpccsystems-platform.target"
                else
                    local CMD="sudo systemctl ${arg} ${comp}"
                fi
            else
                local CMD="sudo ${INIT_PATH}/$_action $_args"
            fi
            echo "$_ip: Running $CMD"
            local CMD="$CMD | tee ${hpccStatusFile}"

            ssh -i $home/$user/.ssh/id_rsa -o LogLevel=QUIET $user@$_ip $CMD;
            scp -i $home/$user/.ssh/id_rsa $user@${_ip}:${hpccStatusFile} ${reportDir}/$_ip > /dev/null 2>&1

            local CMD="rm -rf  $hpccStatusFile"
            ssh -i $home/$user/.ssh/id_rsa -o LogLevel=QUIET $user@$_ip $CMD
            rc=${PIPESTATUS[0]}
            echo
            return $rc
        fi
    else
        echo "$_ip: Cannot Ping host? (Host Alive?)"
        return 1
    fi
}

createScript(){
    local _scriptFile=$1
    local _action=$2
    shift 2
    local _args=$( echo "$@" | tr '\n' ' ')
    local hpccStatusFile=/tmp/hpcc_status_${dateTime}_$$

    cat > $_scriptFile <<SCRIPTFILE
#!/bin/bash
IP=\$1
if ping -c 1 -w 5 -n \$IP > /dev/null 2>&1; then
    echo "\$IP: Host is alive."
    CAN_SSH="\`ssh -i $home/$user/.ssh/id_rsa -o BatchMode=yes -o LogLevel=QUIET -o StrictHostKeyChecking=no $user@\$IP exit > /dev/null 2>&1; echo \$?\`"
    if [[ "\$CAN_SSH" -eq 255 ]]; then
        echo "\$IP: Cannot SSH to host."
        exit 1
    else
        if which systemd 2>&1 1>/dev/null; then
            if [[ -z "${comp}" ]]; then
                if [[ "${arg}" == "status" ]]; then
                    CMD="sudo /bin/systemctl list-dependencies hpccsystems-platform.target"
                else
                    CMD="sudo /bin/systemctl ${arg} hpccsystems-platform.target"
                fi
            else
                if [[ "${arg}" == "status" ]]; then
                    CMD="sudo /bin/systemctl list-dependencies ${comp}"
                else
                    CMD="sudo /bin/systemctl ${arg} ${comp}"
                fi
            fi
        else
            CMD="sudo ${INIT_PATH}/$_action $_args"
        fi
        echo "\$IP: Running \$CMD"
        CMD="\$CMD | tee $hpccStatusFile"
        ssh -i $home/$user/.ssh/id_rsa -o LogLevel=QUIET $user@\$IP \$CMD;
        rc=\${PIPESTATUS[0]}

        scp -i $home/$user/.ssh/id_rsa $user@\${IP}:${hpccStatusFile} ${reportDir}/\$IP

        CMD="rm -rf  $hpccStatusFile"
        ssh -i $home/$user/.ssh/id_rsa -o LogLevel=QUIET $user@\$IP \$CMD
        exit \$rc
    fi
else
    echo "\$IP: Cannot Ping host? (Host Alive?)"
    exit 1
fi
SCRIPTFILE

    chmod +x $_scriptFile
}

runScript() {
    if [[ "$RUN_CLUSTER_DISPLAY_OUTPUT" = "FALSE" ]] && [[ $hasPython -eq 1 ]]; then
        OPTIONS="${OPTIONS} -n ${concurrent}"
        eval ${INSTALL_DIR}/sbin/cluster_script.py -f ${scriptFile} "$OPTIONS"
        local rc=$?
    else
        if [[ $hasPython -eq 0 ]]; then
            echo ""
            echo "Cannot detect python version ${expected_python_version}+. Will run on the cluster hosts sequentially."
            echo ""
        fi
        run_cluster ${scriptFile} 0 $1
        local rc=$?
    fi
    rm -rf $scriptFile &>/dev/null
    return $rc
}

doSetup() {
    init setup
    scriptFile=~/${action}_setup_$$
    createScript $scriptFile $action $args setup
    runScript
    report "${action} setup"
}

doStatus() {
    init status
    scriptFile=~/${action}_status_$$
    createScript $scriptFile $action $args status
    runScript
    report "${action} status"
}

doStop() {
    echo "$action stopping the cluster ..."
    init stop
    scriptFile=~/${action}_stop_$$
    if [[ -n "${comp}" ]]; then
        createScript $scriptFile $action $args stop
        OPTIONS="${DEFAULT_OPTIONS} -h $IPsFile"
        runScript $IPsFile
        report "${action} stop"
    else
        if [[ -e $IPsExcludeDIP ]]; then
            local numIPs=$(wc -l $IPsExcludeDIP | awk '{ print $1 }')
            if [[ $numIPs -gt 0 ]]; then
                createScript $scriptFile $action $args stop
                OPTIONS="${DEFAULT_OPTIONS} -h $IPsExcludeDIP"
                runScript $IPsExcludeDIP
                report "${action} stop" $DIP
            fi
        fi
        for _dip in $DIP; do
            doOneIP $_dip $action $args stop || end 1
        done
    fi
}

doStopall() {
    action="hpcc-init"
    doStop
    action="dafilesrv"
    doStop
}


doStart() {
    init start
    if [[ -n "${comp}" ]]; then
        local startFile=$IPsFile
    else
        for _dip in $DIP; do
            doOneIP $_dip $action $args start || end 1
        done
        local startFile=$IPsExcludeDIP
    fi
    if [[ -e $startFile ]]; then
        local numIPs=$(wc -l $startFile | awk '{ print $1 }')
        if [[ $numIPs -gt 0 ]]; then
            echo "$action starting the cluster ..."
            scriptFile=~/${action}_start_$$
            createScript $scriptFile $action $args start
            OPTIONS="${DEFAULT_OPTIONS} -h $startFile"
            runScript $startFile
            if [[ -n "${comp}" ]]; then
                report "${action} start"
            else
                report "${action} start" $DIP
            fi
            [[ $rc -ne 0 ]] && end $rc
        fi
    fi
}

init() {
    getIPS
    getDali
    IPsFile=/tmp/ip_list_$$
    createIPListFile $IPsFile
    IPsExcludeDIP=/tmp/ip_list_exclude_dip_$$
    createIPListFileExcludeDIP $IPsFile $IPsExcludeDIP

    if [[ $concurrent -eq 0 ]]; then
        concurrent=$( wc -l $IPsFile | awk '{ print $1 }')
    fi

    dateTime=$(date +"%Y%m%d_%H%M%S")
    reportDir=/var/log/HPCCSystems/cluster/$1/${dateTime}
    mkdir -p $reportDir
    chown -R ${user}:${user} ${reportDir}/..
}

report() {
    local _title=$1
    local hostToSkip=$2

    if [[ "$RUN_CLUSTER_DISPLAY_OUTPUT" = "FALSE" ]]; then
        ls ${reportDir} | while read _host; do
            [[ "$_host" = "$hostToSkip" ]] && continue
            local _message=$(cat ${reportDir}/$_host | grep -v "ervice dafilesrv" | grep -v -e "^[[:space:]]*$")
            if [[ -n "$_message" ]]; then
                echo "$_host $_title :"
                echo -e "$_message\n"
            fi
        done
    fi
}


end() {
    if [[ $save -eq 1 ]]; then
        echo "Cluster status is saved under $reportDir"
        echo
    else
        rm -rf $reportDir
    fi
    [[ -e "${IPsExcludeDIP}" ]] &&  rm -rf ${IPsExcludeDIP}
    [[ -e "${IPsFile}" ]] && rm -rf ${IPsFile}
    exit $1
}

use_systemd() {
    if which systemd 1>/dev/null 2>&1; then
        systemd_path=`which systemd`
        return 0
    else
        return 1
    fi
}

############################################
#
# MAIN
#
############################################
cluster_tools_init

if [[ "$(whoami)" != "root" ]] && [[ "$(whoami)" != "${user}" ]]; then
    echo ""
    echo "The script must run as root, $user or sudo."
    echo ""
    exit 1
fi

envfile=$configs/$environment
configfile=${CONFIG_DIR}/${ENV_CONF_FILE}

hasPython=0
save=0
expected_python_version=2.6
is_python_installed $expected_python_version
[[ $? -eq 0 ]] && hasPython=1
concurrent=0
RUN_CLUSTER_DISPLAY_OUTPUT=FALSE

DEFAULT_OPTIONS="-e $configfile -s ${SECTION:-DEFAULT}"

if use_systemd; then
    TEMP=`/usr/bin/getopt -o c:n:sShfd --long help,comp:,save,concurrent:,sequentially,force,debug -n 'hpcc-run' -- "$@"`
else
    TEMP=`/usr/bin/getopt -o a:c:n:sShfd --long help,comp:,action:,save,concurrent:,sequentially,force,debug -n 'hpcc-run' -- "$@"`
fi

if [[ $? != 0 ]] ; then echo "Failure to parse commandline." >&2 ; end 1 ; fi
eval set -- "$TEMP"
while true ; do
    case "$1" in
        -c|--comp) comp=$2
            if [[ -z ${args} ]]; then
                args="-c $2"
            else
                args="${args} -c $2"
            fi
            shift 2 ;;
        -a|--action) action=$2
            shift 2 ;;
        -n|--concurrent)
            if [[ -n "$2" ]] && [[ $2 =~ ^[1-9][0-9]*$ ]] && [[ $concurrent -ne 1 ]]; then
                concurrent=$2
            fi
            shift 2 ;;
        -S|--sequentially)
            concurrent=1
            RUN_CLUSTER_DISPLAY_OUTPUT=TRUE
            shift ;;
        -s|--save) save=1
            shift ;;
        -f|--force) if [[ -z ${args} ]]; then
                        args="-f"
                    else
                        args="${args} -f"
                    fi
                    shift ;;
        -d|--debug) if [[ -z ${args} ]]; then
                        args="-d"
                    else
                        args="${args} -d"
                    fi
                    shift ;;
        -h|--help) print_usage
            shift ;;
        --) shift ; break ;;
        *) print_usage ;;
    esac
done

case "$action" in
    hpcc-init) ;;
    dafilesrv) ;;
    *) if [[ -z $action ]]; then
            if use_systemd; then
                action="hpccsystems-platform.target"
            else #sysv init
                action="hpcc-init"
            fi
        else
            print_usage
        fi
        ;;
esac

for arg; do
    arg=$arg;
    case "$arg" in
        start)
            doStart
            ;;
        stop)
            doStop
            ;;
        stopall)
            doStopall
            ;;
        restart)
            doStop
            doStart
            ;;
        status)
            doStatus
            ;;
        setup)
            doSetup
            ;;
        *) print_usage;;
    esac
done

end 0

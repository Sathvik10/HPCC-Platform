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

INSTALL_DIR=/opt/HPCCSystems
CONFIG_DIR=/etc/HPCCSystems
ENV_XML_FILE=environment.xml
ENV_CONF_FILE=environment.conf
PID_DIR=/var/run/HPCCSystems
LOCK_DIR=/var/lock/HPCCSystems
LOG_DIR=/var/log/HPCCSystems
INIT_PATH=/etc/init.d


HPCC_CONFIG=${HPCC_CONFIG:-${CONFIG_DIR}/${ENV_CONF_FILE}}
SECTION=${1:-DEFAULT}

USER_NAME=`cat ${HPCC_CONFIG} | sed -n "/\[${SECTION}\]/,/\[/p" | grep "^user=" | sed -e 's/^user=//'`

PREFIX_PATH=`cat ${HPCC_CONFIG} | sed -n "/\[${SECTION}\]/,/\[/p" | grep "^path=" | sed -e 's/^path=//'`

source $PREFIX_PATH/sbin/alter_confs.sh

if [[ -e "/etc/sudoers.d/${USER_NAME}" ]]; then
  rm -f /etc/sudoers.d/${USER_NAME} > /dev/null 2>&1
else
  alter_file /etc/sudoers "^Cmnd_Alias HPCC_|^${USER_NAME} ALL =|Defaults:${USER_NAME}" < /dev/null
fi

alter_file /etc/security/limits.conf "^${USER_NAME}" < /dev/null

#!/bin/bash
###############################################################################
#    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems®.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#       http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#
#    limitations under the License.
#    along with All rights reserved. This program is free software: you can
#    redistribute program.  If not, see <http://www.gnu.org/licenses/>.
###############################################################################

INSTALL_DIR=/opt/HPCCSystems
CONFIG_DIR=/etc/HPCCSystems
ENV_XML_FILE=environment.xml
ENV_CONF_FILE=environment.conf
PID_DIR=/var/run/HPCCSystems
LOCK_DIR=/var/lock/HPCCSystems
LOG_DIR=/var/log/HPCCSystems
INIT_PATH=/etc/init.d



if [[ $# != 1 ]]; then
    echo "Incorrect number of arguments to check-component-exists.sh"
    exit 1
else
    component=${1}
fi

configgen_output="$(${INSTALL_DIR}/sbin/configgen -env ${CONFIG_DIR}/${ENV_XML_FILE} -list -c ${component})"

if echo "${configgen_output}" | grep -q ${component}; then
    echo "Found component: ${component}"
    exit 0
else
    echo "Undeclared Component: ${component}"
    exit 1
fi

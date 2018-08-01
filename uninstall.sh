#!/bin/sh

wsadm=/usr/local/WebSphere7/AppServer/profiles/Dmgr01/bin/wsadmin.sh
script_path=/usr/local/WebSphere7/AppServer/profiles/Dmgr01/bin/Automated_Deployment_Scripts
uninstall_script=Automated_BCPCommerce_CCPCommerce_PCP_BCPSLM_CCPSLM_CCPStreamline_Jython_UN-install 

$wsadm -lang jython -f ${script_path}/${uninstall_script}
#!/bin/bash

wsadm=/usr/local/WebSphere7/AppServer/profiles/Dmgr01/bin/wsadmin.sh
script_path=/usr/local/WebSphere7/AppServer/profiles/Dmgr01/bin/Automated_Deployment_Scripts

$wsadm -lang jython -f ${script_path}/Automated_PCPProd_Jython_Install
$wsadm -lang jython -f ${script_path}/Automated_BCPCommerce_Jython_Install
$wsadm -lang jython -f ${script_path}/Automated_BCPSLM_Jython_Install
$wsadm -lang jython -f ${script_path}/Automated_CCPCommerce_Jython_Install
$wsadm -lang jython -f ${script_path}/Automated_CCPSLM_Jython_Install
$wsadm -lang jython -f ${script_path}/Automated_CCPStreamlineServices_Jython_Install
$wsadm -lang jython -f ${script_path}/Automated_PCPProd_Jython_Install
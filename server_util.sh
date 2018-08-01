#!/bin/bash

###############################################################################
#varibles
#
payload="./copy_key.sh"
hostnames=($(cat ./hostnames.txt))
hlen=${#hostnames[@]}
unprocessed="./unprocessed"
processed="./processed"
sdate="$(date +%m%d%Y-%H%M)"
log="| tee -a ./copy_key.log"

###############################################################################
#main
#
echo "total hosts: ${#hostnames[@]}"

for ((node=0; node<${hlen}; node++)); do
    echo "============================================================"
    echo "host ${node} of ${hlen}"
    echo " "
    echo "starting remote commands on ${hostnames[node]}"
    nslookup ${hostnames[node]} | awk '/Address/{i++}i==2'
    ssh ${hostnames[node]} 'bash -s' < $payload $log
    [[ $rexit -gt 0 ]] && echo "${hostnames[node]}" >> ${processed}/failures-${sdate}.txt
    echo "============================================================"
done
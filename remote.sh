#!/bin/bash
ip=$1
port=$2
user=$3
pass=$4

sshpass -p "$pass" scp -P $port /DevOps/GIT/Dec/30/bash/ServerPerformance.sh $user@$ip:/root/

clear

sshpass -p "$pass" ssh -p $port -o StrictHostKeyChecking=no $user@$ip "bash /DevOps/GIT/Dec/30/bash/ServerPerformance.sh $ip"

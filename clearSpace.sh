#!/bin/bash


currentUsage=$(df -h | grep '/dev/mapper*' | awk {'print $5'})
echo "The current disk space is " $current_usage

max_usage="85%"

if [ $((${current_usage%?})) -ge $(( ${max_usage%?})) ]; then
            docker system prune -a -f

elif [ $((${current_usage%?})) -lt $(( ${max_usage%?})) ]; then
            echo "No problems. Disk usage at ${current_usage}." > /dev/null

fi

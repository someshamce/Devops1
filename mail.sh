#!/bin/bash

disk=`df -h . | awk -F " " 'NR>1 {print $(NF-1)}' | sed 's/%//g'`
if [ $disk -gt 70 ]
then
	mail -s "Memory reached 70 percent" madhu.siddaramanna93@gmail.com
fi

#!/bin/sh
echo "========================================================================"
echo "                        SYSTEM INFORMATION"
echo "________________________________________________________________________"
echo "HOSTNAME	: `hostname`"
if [ -e /etc/redhat-release ]; then cat /etc/redhat-release; fi
if [ -e /etc/os-release ]; then cat /etc/os-release; fi
echo "________________________________________________________________________"
echo "USERID	: `whoami`"
echo "________________________________________________________________________"
echo "CWD	: `pwd`"
echo ""
ls -la 
echo "________________________________________________________________________"
echo "DISKS	: "
df -kh
echo "________________________________________________________________________"
echo "________________________________________________________________________"
echo "ENV	:"
env
which python
python -V
echo "________________________________________________________________________"
echo "args 	: $@"
echo "________________________________________________________________________"
#echo "File Tx 	: `cat test.txt`" 
#while [ 1 ]
#do 
sleepval=600
test -n "$1" && sleepval=$1
    echo "sleeping" $sleepval
    sleep $sleepval
#done

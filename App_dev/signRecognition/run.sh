#!/bin/bash
a=100
echo $a
while [ 1 ]
do
python detectWithWebCamera.py | awk '{ if( $1=="Turn" ){print "Decelerating Vehicle"; }}'
a=`expr $a - 10`
echo $a
if [ $a -lt 41 ]
then
    exit
fi
done

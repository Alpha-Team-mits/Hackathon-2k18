#!/bin/bash
while [ 1 ]
do
python detectWithWebCamera.py | awk '{ if( $1=="Turn" ){print "Decelerating Vehicle"; }}'
done

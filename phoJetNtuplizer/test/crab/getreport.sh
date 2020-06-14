#!/bin/bash
 
for jobDir in `ls ${1}`; do
echo "                 "   
echo "${jobDir}"
crab report -d ${1}/${jobDir}
   
done

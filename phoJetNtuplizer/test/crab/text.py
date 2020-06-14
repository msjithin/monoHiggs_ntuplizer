import os
import sys
import fileinput 


with open('out_.txt','w') as write_obj:
    rstr='[ '
    count=0
    for line in fileinput.input('list'):
        line=line.strip('\n')
        sampleName=line.split(' ')
        print(sampleName[3])
        rstr = rstr+sampleName[1]+", "
        count+=1
        #print(rstr)
        #write_obj.write(rstr)
    rstr = rstr+"] "
    write_obj.write(rstr)
print(rstr)
print(count)

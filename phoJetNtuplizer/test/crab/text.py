import os
import sys
import fileinput 


with open('out_.txt','w') as write_obj:
    rstr='[ '
    count=0
    for line in fileinput.input('mc_sample_dict'):
        line=line.strip('\n')
        sampleName=line.split(':')[0].strip(' ')
        #print(sampleName[0])
        rstr = rstr+sampleName+", "
        #count+=1
        #print(rstr)
        #write_obj.write(rstr)
    rstr = rstr+"] "
    write_obj.write(rstr)
print(rstr)
print(count)

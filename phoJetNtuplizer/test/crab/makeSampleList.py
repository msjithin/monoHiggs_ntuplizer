
import os

fileIn = open('mc_sample_dict', 'r') 
count = 0
#fileOut=open('mc_sample_list', 'w')  
datasetName=""
datasetList=[]
for line in fileIn:
    count += 1
    datasetName=line.split(' ')[-1]
    #print(datasetName)
    datasetName = datasetName.replace(':','')
    datasetName = datasetName.replace('\'','')
    datasetName = datasetName.replace(',','')
    datasetName = datasetName.replace('\n','')
    datasetList.append(datasetName)
    
datasetList=sorted(datasetList)


rstr='[ '
count=0
for line in fileIn:
    line=line.strip('\n')
    sampleName=line.split(':')[0].strip(' ')
    print(sampleName)
    rstr = rstr+sampleName+", "
    #count+=1
    #print(rstr)
    #write_obj.write(rstr)
rstr = rstr+"] "
print(rstr)

with open('mc_sample_list','w') as write_obj: 
    write_obj.write(rstr)   
    for i in datasetList:
        write_obj.write(str(i)+'\n')


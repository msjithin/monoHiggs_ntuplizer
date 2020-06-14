import os
import fileinput
import sys
import re

def prepend_line(file_name, line):
    """ Insert given string as a new line at the beginning of a file """
    # define name of temporary dummy file
    dummy_file = file_name + '.bak'
    # open original file in read mode and dummy file in write mode
    with open(file_name, 'r') as read_obj, open(dummy_file, 'w') as write_obj:
        # Write given line to the dummy file
        write_obj.write(line + '\n')
        # Read lines from original file one by one and append them to the dummy file
        for line in read_obj:
            write_obj.write(line)
    # remove original file
    os.remove(file_name)
    # Rename dummy file as the original file
    os.rename(dummy_file, file_name)
def replaceAll(file,searchExp,replaceExp):
    for line in fileinput.input(file, inplace=1):
        if searchExp in line:
            line = line.replace(searchExp,replaceExp)
        sys.stdout.write(line)

def replaceEnd(file,searchExp):
    for line in fileinput.input(file, inplace=1):
        if searchExp in line:
            sample = re.search('/crab_job_(.*)/20', line)
            sampleName = sample.group(1)
            replaceExp = searchExp+"/ "+sampleName+"_"+searchExp[-2:]+".root -1 1000 2018_test MC "+sampleName+"_"+searchExp[-2:]+" "
            line = line.replace(searchExp,replaceExp)
        sys.stdout.write(line)

def replaceline(file):
    for line in fileinput.input(file, inplace=1):
        sampleData = re.search('/(.*)/Run', line)
        sampleMC = re.search('/(.*)_13TeV', line)
        era=""
        if '_13TeV' in line:
            sampleName = sampleMC.group(1)
        else:
            sampleName = sampleData.group(1)
            if 'Run2017A' in line:
                era = "_EraA"
            elif 'Run2017B' in line:
                era = "_EraB"
            elif 'Run2017C' in line:
                era = "_EraC"
            elif 'Run2017D' in line:
                era = "_EraD"
            elif 'Run2017E' in line:
                era = "_EraE"
            elif 'Run2017F' in line:
                era = "_EraF"
            elif 'Run2017G' in line:
                era = "_EraG"
        replaceExp = " '"+sampleName+era+"' : '"+line.rstrip()+"',"
        print(replaceExp)
        #replaceExp = searchExp+"/ "+sampleName+"_"+searchExp[-2:]+".root -1 1000 2018_test MC "+sampleName+"_"+searchExp[-2:]+" "
        #line = line.replace(searchExp,replaceExp)
        #sys.stdout.write(line)
def getListofSamples(file):
    returnString=[]
    for line in fileinput.input(file):
        samplename = line.split("\'")[1]
        returnString.append(samplename)
    return returnString

outFile = 'textForMultiCrab.txt'
os.popen('cp datasets2017.txt '+outFile)
#replaceAll(outFile,"/hdfs/store/","./MakeCondorFiles.csh analyze_mutau_MC /hdfs/store/")
#replaceEnd(outFile,"/0000")
#prepend_line(outFile, './rootcom mutau_analyzer_wdnnv2 analyze_mutau_MC  '+'\n')
replaceline(outFile)

with open(outFile, 'a') as append_obj:
    append_obj.write('listOfSamples = {}'.format(getListofSamples(outFile)))


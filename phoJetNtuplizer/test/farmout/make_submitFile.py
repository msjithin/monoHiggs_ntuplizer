import os
import fileinput
import sys
import re

#/hdfs/store/user/ms/MonoHiggs_2017_signalSample_AOD/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_MH2_600_MHC_600-AOD_submit
os.popen('ls -d /hdfs/store/user/ms/MonoHiggs_2017_signalSample_MINIAOD/* > miniaod_dir_list')
outFile = open('testSignalSubmit.sh', 'w')

#os.popen('cp gensim_dir_list '+outFile)
writeString="""
farmoutAnalysisJobs \\
    --memory-requirements=5000 \\
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \\
    --input-files-per-job=1 \\
    --extra-inputs=Fall17_17Nov2017_V32_102X_MC.db \\
    --extra-usercode-files=cfipython \\
    --input-dir={} \\
    MonoHiggs_2017_signalNtuplized_27Apr/{} \\
    /afs/hep.wisc.edu/home/ms/monoHiggs_2017/CMSSW_10_2_18  \\
    /afs/hep.wisc.edu/home/ms/monoHiggs_2017/CMSSW_10_2_18/src/phoJetAnalysis/phoJetNtuplizer/test/farmout/run_102X_signal2017-farmout.py  \\
    --vsize-limit=10000 

"""
# Using readline()
file1 = open('miniaod_dir_list', 'r') 
count = 0
outFile.write('#!/bin/bash \n ')

for line in file1: 
    count +=1
    sampleName=line.split("_MINIAOD/",1)[1] 
    sampleName=sampleName.split("-miniAOD_",1)[0]
    outFile.write(writeString.format(line.strip(), sampleName.strip()))

file1.close()
outFile.close()
#replaceAll(outFile,"/hdfs/store/","./MakeCondorFiles.csh analyze_mutau_skim /hdfs/store/")
#replaceEnd(outFile,"/0000")

#prepend_line(outFile, './rootcom skimm_mt_2018 analyze_mutau_skim  '+'\n')
print """
created testSignalSubmit.sh
do 
  bash testSignalSubmit.sh

"""

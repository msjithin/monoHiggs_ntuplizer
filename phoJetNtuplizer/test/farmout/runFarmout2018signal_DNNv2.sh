#!/bin/bash

farmoutAnalysisJobs \
    --input-files-per-job=1 \
    --skip-existing-output \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_MH2_200_MHC_200 \
    --extra-inputs=Autumn18_V19_MC.db \
    --extra-usercode-files=cfipython \
    --memory-requirements=4000 \
    --assume-input-files-exist \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.Disk >= RequestDisk) && (TARGET.Memory >= RequestMemory) && (TARGET.HasFileTransfer)' \
    MonoHiggs_2017_dignal \
    /afs/hep.wisc.edu/home/ms/monoHiggs_2018_wDnn/CMSSW_10_2_18 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_2018_wDnn/CMSSW_10_2_18/src/phoJetAnalysis/phoJetNtuplizer/test/farmout/run_dnn_test_v2.py




# --memory-requirements=4000 \
# --assume-input-files-exist \ ##to run for files elsewhere in US
# --skip-existing-output \ ## to resubmit for missing root files
 
# To use HEP machines only
#--base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.Disk >= RequestDisk) && (TARGET.Memory >= RequestMemory) && (TARGET.HasFileTransfer)' \


#!/bin/bash 
 
farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_MH2_200_MHC_200 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_MH2_200_MHC_200 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


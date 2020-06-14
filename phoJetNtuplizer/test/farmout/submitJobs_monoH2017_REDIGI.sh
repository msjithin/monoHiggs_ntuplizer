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


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150_MH2_200_MHC_200 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150_MH2_200_MHC_200 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100_MH2_300_MHC_300 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100_MH2_300_MHC_300 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150_MH2_300_MHC_300 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150_MH2_300_MHC_300 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100_MH2_400_MHC_400 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100_MH2_400_MHC_400 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150_MH2_400_MHC_400 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150_MH2_400_MHC_400 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200_MH2_400_MHC_400 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200_MH2_400_MHC_400 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250_MH2_400_MHC_400 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250_MH2_400_MHC_400 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150_MH2_500_MHC_500 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150_MH2_500_MHC_500 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200_MH2_500_MHC_500 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200_MH2_500_MHC_500 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250_MH2_500_MHC_500 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250_MH2_500_MHC_500 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300_MH2_500_MHC_500 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300_MH2_500_MHC_500 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250_MH2_700_MHC_700 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250_MH2_700_MHC_700 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300_MH2_700_MHC_700 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300_MH2_700_MHC_700 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350_MH2_700_MHC_700 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350_MH2_700_MHC_700 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400_MH2_700_MHC_700 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400_MH2_700_MHC_700 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_400_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_400_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300_MH2_900_MHC_900 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300_MH2_900_MHC_900 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350_MH2_900_MHC_900 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350_MH2_900_MHC_900 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400_MH2_900_MHC_900 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400_MH2_900_MHC_900 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500_MH2_900_MHC_900 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500_MH2_900_MHC_900 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_MH2_200_MHC_200 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100_MH2_200_MHC_200 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150_MH2_200_MHC_200 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150_MH2_200_MHC_200 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100_MH2_300_MHC_300 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100_MH2_300_MHC_300 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150_MH2_300_MHC_300 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150_MH2_300_MHC_300 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100_MH2_400_MHC_400 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100_MH2_400_MHC_400 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150_MH2_400_MHC_400 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150_MH2_400_MHC_400 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200_MH2_400_MHC_400 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200_MH2_400_MHC_400 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250_MH2_400_MHC_400 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250_MH2_400_MHC_400 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150_MH2_500_MHC_500 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150_MH2_500_MHC_500 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200_MH2_500_MHC_500 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200_MH2_500_MHC_500 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250_MH2_500_MHC_500 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250_MH2_500_MHC_500 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300_MH2_500_MHC_500 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300_MH2_500_MHC_500 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500_MH2_600_MHC_600 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500_MH2_600_MHC_600 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250_MH2_700_MHC_700 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250_MH2_700_MHC_700 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300_MH2_700_MHC_700 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300_MH2_700_MHC_700 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350_MH2_700_MHC_700 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350_MH2_700_MHC_700 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400_MH2_700_MHC_700 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400_MH2_700_MHC_700 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500_MH2_800_MHC_800 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500_MH2_800_MHC_800 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300_MH2_900_MHC_900 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300_MH2_900_MHC_900 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350_MH2_900_MHC_900 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350_MH2_900_MHC_900 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400_MH2_900_MHC_900 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400_MH2_900_MHC_900 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


farmoutAnalysisJobs \
    --memory-requirements=5000 \
    --base-requirements='TARGET.PoolName == "HEP" && ((MY.RequiresSharedFS =!= true || TARGET.HasAFS_OSG) && (TARGET.OSG_major =!= undefined || TARGET.IS_GLIDEIN =?= true) && (TARGET.HasParrotCVMFS =?= true || (TARGET.UWCMS_CVMFS_Exists && TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Revision >= 444 && TARGET.CMS_CVMFS_Revision >= 81620))) && ((MY.NoAutoRequirements =?= true || (TARGET.OSglibc_major == 2 && TARGET.OSglibc_minor >= 17 && (MY.HEP_VO =!= "uscms" || TARGET.CMS_CVMFS_Exists && TARGET.UWCMS_CVMFS_Exists)))) && (TARGET.Arch == "X86_64") && (TARGET.OpSys == "LINUX") && (TARGET.HasFileTransfer)' \
    --input-files-per-job=1 \
    --input-dir=/hdfs/store/user/ms/MonoHiggs_2017_signalSample_GENSIM/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500_MH2_900_MHC_900 \
    --match-input-files='2HDMa*.root' \
    MonoHiggs_2017_redigi/2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500_MH2_900_MHC_900 \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5  \
    /afs/hep.wisc.edu/home/ms/monoHiggs_signal_sample/CMSSW_10_2_5/src/REDIGI_submit.py  \
    --vsize-limit=10000 


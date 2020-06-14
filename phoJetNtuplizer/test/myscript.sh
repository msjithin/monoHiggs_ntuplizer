
# rm -rf RecoTauTag/TrainingFiles/data 
echo "================= data files clones =================="
git clone https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles -b master RecoTauTag/TrainingFiles/data 

echo "Here there are all the input arguments"
#echo $@
#echo "===================== PSet.py file ==================="


cmsRun -j FrameworkJobReport.xml -p run_dnn_test.py

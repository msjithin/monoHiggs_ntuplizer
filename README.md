# 2018 Analyzer: 102X
## MiniAOD analyzer for all physics objects 

Instructions:
```
cmsrel CMSSW_10_2_18
cd CMSSW_10_2_18/src
cmsenv
git cms-init

## MET 
git cms-addpkg RecoMET/METFilters
## Reco Tau for deep tau ids
git cms-addpkg RecoTauTag/RecoTau

#https://twiki.cern.ch/twiki/bin/view/CMS/EgammaPostRecoRecipes#102X
git cms-merge-topic cms-egamma:PhotonIDValueMapSpeedup1029 
scram b -j 8
git clone git@github.com:cms-egamma/EgammaPostRecoTools.git  EgammaUser/EgammaPostRecoTools
cd  EgammaUser/EgammaPostRecoTools
git checkout master
cd -

#For 2018 data-taking
git clone -b master https://github.com/msjithin/nTuplizer_2018.git


scram b -j10
```

For Electrons and Photons:
[1]-https://twiki.cern.ch/twiki/bin/view/CMS/EgammaMiniAODV2
[2]-https://twiki.cern.ch/twiki/bin/view/CMS/Egamma2017DataRecommendations
[3]-https://twiki.cern.ch/twiki/bin/view/CMS/EgammaIDRecipesRun2

For MET:
[4]-https://twiki.cern.ch/twiki/bin/viewauth/CMS/MissingETUncertaintyPrescription#Instructions_for_9_4_X_X_9_for_2

For Taus:
[5]-https://twiki.cern.ch/twiki/bin/view/CMSPublic/SWGuidePFTauID#Rerunning_of_the_tau_ID_on_M_AN1
https://twiki.cern.ch/twiki/bin/view/CMSPublic/SWGuidePFTauID#Running_of_the_DNN_based_tau_ID

[6]-https://twiki.cern.ch/twiki/pub/CMSPublic/SWGuidePFTauID/2017v2-recipe.pdf

For Muons:
[7]-https://twiki.cern.ch/twiki/bin/viewauth/CMS/SWGuideMuonIdRun2


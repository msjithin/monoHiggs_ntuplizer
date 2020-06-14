import os

dataset = {

'TTTo2L2Nu_powheg'        : '/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'TTToSemiLeptonic_powheg' : '/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'TTToHadronic_powheg'     : '/TTToHadronic_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',

'WJetsToLNu'   : '/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'W1JetsToLNu'  : '/W1JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'W2JetsToLNu'  : '/W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'W3JetsToLNu'  : '/W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'W4JetsToLNu'  : '/W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',

'DYJetsToLL_M10to50' : '/DYJetsToLL_M-10to50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'DYJetsToLL'  : '/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'DY1JetsToLL' : '/DY1JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'DY2JetsToLL' : '/DY2JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'DY3JetsToLL' : '/DY3JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'DY4JetsToLL' : '/DY4JetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',

'WJetsToLNu_Incl':       '/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'WJetsToLNu_0J_Incl':    '/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_1J_Incl':    '/WJetsToLNu_1J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_2J_Incl':    '/WJetsToLNu_2J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_HT70-100' :  '/WJetsToLNu_HT-70To100_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM', 
'WJetsToLNu_HT100-200':  '/WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_HT200-400':  '/WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_HT400-600':  '/WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_HT600-800':  '/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_HT800-1200': '/WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_HT1200-2500':'/WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WJetsToLNu_HT2500-Inf': '/WJetsToLNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',

'DYJetsToLL_0J_Incl':    '/DYJetsToLL_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'DYJetsToLL_2J_Incl':    '/DYJetsToLL_2J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'DYJetsToLL_HT70-100':   '/DYJetsToLL_M-50_HT-70to100_TuneCP5_PSweights_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM', 
'DYJetsToLL_HT100-200':  '/DYJetsToLL_M-50_HT-100to200_TuneCP5_PSweights_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'DYJetsToLL_HT200-400':  '/DYJetsToLL_M-50_HT-200to400_TuneCP5_PSweights_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'DYJetsToLL_HT400-600':  '/DYJetsToLL_M-50_HT-400to600_TuneCP5_PSweights_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v7/MINIAODSIM',
'DYJetsToLL_HT600-800':  '/DYJetsToLL_M-50_HT-600to800_TuneCP5_PSweights_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM', 
'DYJetsToLL_HT800-1200': '/DYJetsToLL_M-50_HT-800to1200_TuneCP5_PSweights_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'DYJetsToLL_HT1200-2500':'/DYJetsToLL_M-50_HT-1200to2500_TuneCP5_PSweights_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'DYJetsToLL_HT2500-Inf': '/DYJetsToLL_M-50_HT-2500toInf_TuneCP5_PSweights_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',



'WWToLNuQQ'   : '/WWToLNuQQ_NNPDF31_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'VVTo2L2Nu'   : '/VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WZTo3LNu'    : '/WZTo3LNu_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WWTo1L1Nu2Q' : '/WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ZZTo4L'      : '/ZZTo4L_TuneCP5_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'ZZTo2L2Q'    : '/ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ST_tW_top'   : '/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
'ST_tW_antitop' : '/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
'ST_t-channel_top' : '/ST_t-channel_top_4f_InclusiveDecays_TuneCP5_13TeV-powheg-madspin-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ST_t-channel_antitop' : '/ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_13TeV-powheg-madspin-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',

'GluGluHToTauTau' : '/GluGluHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'VBFHToTauTau'    : '/VBFHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
'WplusHToTauTau'  : '/WplusHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'WminusHToTauTau' : '/WminusHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'ZHToTauTau'      : '/ZHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',


'EWKZ2Jets_ZToLL' : '/EWKZ2Jets_ZToLL_M-50_TuneCP5_PSweights_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'EWKZ2Jets_ZToNuNu' : '/EWKZ2Jets_ZToNuNu_TuneCP5_PSweights_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'EWKWPlus2Jets_WToLNu' : '/EWKWPlus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'EWKWMinus2Jets_WToLNu' : '/EWKWMinus2Jets_WToLNu_M-50_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',

'GluGluHToWWTo2L2Nu' : '/GluGluHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'VBFHToWWTo2L2Nu' : '/VBFHToWWTo2L2Nu_M125_13TeV_powheg2_JHUGenV714_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'HWplusJ_HToWW' : '/HWplusJ_HToWW_M125_13TeV_powheg_jhugen724_pythia8_TuneCP5/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'HWminusJ_HToWW' : '/HWminusJ_HToWW_M125_13TeV_powheg_jhugen724_pythia8_TuneCP5/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'HZJ_HToWW' : '/HZJ_HToWW_M125_13TeV_powheg_jhugen714_pythia8_TuneCP5/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'GluGluZH_HToWW' : '/GluGluZH_HToWW_M125_13TeV_powheg_pythia8_TuneCP5_PSweights/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ttHToNonbb' : '/ttHToNonbb_M125_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'WGToLNuG' : '/WGToLNuG_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ggZH_HToTauTau_ZToQQ' : '/ggZH_HToTauTau_ZToQQ_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ggZH_HToTauTau_ZToLL' : '/ggZH_HToTauTau_ZToLL_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ggZH_HToTauTau_ZToNuNu' : '/ggZH_HToTauTau_ZToNuNu_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',

'ZJetsToNuNu_HT100-200' :  '/ZJetsToNuNu_HT-100To200_13TeV-madgraph/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM', 
'ZJetsToNuNu_HT200-400' :  '/ZJetsToNuNu_HT-200To400_13TeV-madgraph/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ZJetsToNuNu_HT400-600' :  '/ZJetsToNuNu_HT-400To600_13TeV-madgraph/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'ZJetsToNuNu_HT600-800' :  '/ZJetsToNuNu_HT-600To800_13TeV-madgraph/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ZJetsToNuNu_HT800-1200' : '/ZJetsToNuNu_HT-800To1200_13TeV-madgraph/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ZJetsToNuNu_HT1200-2500' :'/ZJetsToNuNu_HT-1200To2500_13TeV-madgraph/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'ZJetsToNuNu_HT2500-Inf' : '/ZJetsToNuNu_HT-2500ToInf_13TeV-madgraph/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'WWW'   :      '/WWW_4F_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'WWZ'    :  '/WWZ_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'WZZ'    :  '/WZZ_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'ZZZ'    :  '/ZZZ_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
  
}
#
#if __name__ == '__main__':
from CRABAPI.RawCommand import crabCommand

def submit(config):
  res = crabCommand('submit', config = config)

from CRABClient.UserUtilities import config
from multiprocessing import Process

config = config()
name = 'MC2018_Autumn18_monoHiggs_09Jun2020'
config.General.workArea = 'crab_'+name
config.General.transferOutputs = True
config.General.transferLogs = False

config.JobType.pluginName = 'Analysis'
config.JobType.inputFiles = ['Autumn18_V19_MC.db']
config.JobType.allowUndistributedCMSSW = True

config.section_('Data') 
config.Data.publication = False
config.Data.inputDBS = 'global'
config.Data.splitting = 'FileBased' #'EventAwareLumiBased' #'FileBased'

config.Site.storageSite = 'T2_US_Wisconsin'
#config.Site.whitelist = ["T2_US_Wisconsin"]
#config.Site.blacklist = ['T2_CH_CERN']

#listOfSamples =[ 'TTTo2L2Nu_powheg', 'TTToSemiLeptonic_powheg', 'TTToHadronic_powheg', 'W1JetsToLNu', 'W2JetsToLNu', 'W3JetsToLNu', 'W4JetsToLNu', 'DYJetsToLL_M10to50', 'DYJetsToLL', 'DY1JetsToLL', 'DY2JetsToLL', 'DY3JetsToLL', 'DY4JetsToLL', 'WJetsToLNu_Incl', 'WJetsToLNu_0J_Incl', 'WJetsToLNu_1J_Incl', 'WJetsToLNu_2J_Incl', 'WJetsToLNu_HT70-100', 'WJetsToLNu_HT100-200', 'WJetsToLNu_HT200-400', 'WJetsToLNu_HT400-600', 'WJetsToLNu_HT600-800', 'WJetsToLNu_HT800-1200', 'WJetsToLNu_HT1200-2500', 'WJetsToLNu_HT2500-Inf', 'DYJetsToLL_0J_Incl', 'DYJetsToLL_2J_Incl', 'DYJetsToLL_HT70-100', 'DYJetsToLL_HT100-200', 'DYJetsToLL_HT200-400', 'DYJetsToLL_HT400-600', 'DYJetsToLL_HT600-800', 'DYJetsToLL_HT800-1200', 'DYJetsToLL_HT1200-2500', 'DYJetsToLL_HT2500-Inf', 'WWToLNuQQ', 'VVTo2L2Nu', 'WZTo3LNu', 'WWTo1L1Nu2Q', 'ZZTo4L', 'ZZTo2L2Q', 'ST_tW_top', 'ST_tW_antitop', 'ST_t-channel_top', 'ST_t-channel_antitop', 'GluGluHToTauTau', 'VBFHToTauTau', 'WplusHToTauTau', 'WminusHToTauTau', 'ZHToTauTau', 'EWKZ2Jets_ZToLL', 'EWKZ2Jets_ZToNuNu', 'EWKWPlus2Jets_WToLNu', 'EWKWMinus2Jets_WToLNu', 'GluGluHToWWTo2L2Nu', 'VBFHToWWTo2L2Nu', 'HWplusJ_HToWW', 'HWminusJ_HToWW', 'HZJ_HToWW', 'GluGluZH_HToWW', 'ttHToNonbb', 'WGToLNuG', 'ggZH_HToTauTau_ZToQQ', 'ggZH_HToTauTau_ZToLL', 'ggZH_HToTauTau_ZToNuNu', 'ZJetsToNuNu_HT100-200', 'ZJetsToNuNu_HT200-400', 'ZJetsToNuNu_HT400-600', 'ZJetsToNuNu_HT600-800', 'ZJetsToNuNu_HT800-1200', 'ZJetsToNuNu_HT1200-2500', 'ZJetsToNuNu_HT2500-Inf', 'WWW', 'WWZ', 'WZZ', 'ZZZ' ] 
#listOfSamples = ['DY1JetsToLL', 'DYJetsToLL', 'ST_t-channel_top', 'TTToHadronic_powheg', 'TTToSemiLeptonic_powheg', 'WJetsToLNu_0J_Incl', 'WJetsToLNu_1J_Incl' ]
listOfSamples = ['DY1JetsToLL']
for sample in listOfSamples:
  os.popen('cp run_dnn_test_v2.py run_dnn_test_v2_'+sample+'.py')
  with open('run_dnn_test_v2_'+sample+'.py') as oldFile:
    newText = oldFile.read().replace('Ntuple_mc.root', 'Ntuple_mc.root')
  with open('run_dnn_test_v2_'+sample+'.py', 'w') as newFile:
    newFile.write(newText) 

  config.General.requestName = 'job_'+sample
  
  config.JobType.psetName = 'run_dnn_test_v2_'+sample+'.py'
  config.JobType.outputFiles = ['Ntuple_mc.root']
  
  config.Data.inputDataset   = dataset[sample]
  config.Data.unitsPerJob = 1
  config.Data.totalUnits = -1
  config.Data.outLFNDirBase = '/store/user/jmadhusu/'+name
  p = Process(target=submit, args=(config,))
  p.start()
  p.join()

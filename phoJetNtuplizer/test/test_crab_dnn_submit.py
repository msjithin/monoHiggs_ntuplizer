import os

dataset = {

'GluGluHToTauTau' : '/GluGluHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'VBFHToTauTau'    : '/VBFHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
'WplusHToTauTau'  : '/WplusHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'WminusHToTauTau' : '/WminusHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'ZHToTauTau'      : '/ZHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM'
  
}

#if __name__ == '__main__':
from CRABAPI.RawCommand import crabCommand

def submit(config):
  res = crabCommand('submit', config = config)

from CRABClient.UserUtilities import config
config = config()
name = 'MC2018_Autumn18_monoHiggs_27Feb_withDNN'
config.General.workArea = 'crab_'+name
config.General.transferOutputs = True
config.General.transferLogs = False

config.JobType.pluginName = 'Analysis'
#config.JobType.inputFiles = ['Autumn18_V19_MC.db']
config.JobType.allowUndistributedCMSSW = True

config.section_('Data') 
config.Data.publication = False
config.Data.inputDBS = 'global'
config.Data.splitting = 'EventAwareLumiBased' #'FileBased'

config.Site.storageSite = 'T2_US_Wisconsin'
#config.Site.whitelist = ["T2_US_Wisconsin"]
#config.Site.blacklist = ['T2_CH_CERN']

listOfSamples = ['GluGluHToTauTau' ] 

for sample in listOfSamples:  
  os.popen('cp run_dnn_test.py run_dnn_'+sample+'.py')
  os.popen('cp myscript.sh myscript_'+sample+'.sh')
  
  with open('myscript_'+sample+'.sh') as oldFile:
    newText = oldFile.read().replace('run_dnn_test.py', 'run_dnn_'+sample+'.py')
  with open('myscript_'+sample+'.sh', 'w') as newFile:
    newFile.write(newText)


  config.General.requestName = 'job_'+sample
  config.JobType.scriptExe = 'myscript_'+sample+'.sh'
  config.JobType.psetName = 'run_dnn_'+sample+'.py'
  config.JobType.outputFiles = ['Ntuple_mc.root']
  config.JobType.inputFiles = ['Autumn18_V19_MC.db', 'myscript_'+sample+'.sh', 'run_dnn_'+sample+'.py']

  config.Data.inputDataset   = dataset[sample]
  config.Data.unitsPerJob = 10000
  config.Data.totalUnits = 1
  config.Data.outLFNDirBase = '/store/user/jmadhusu/'+name
  #submit(config)

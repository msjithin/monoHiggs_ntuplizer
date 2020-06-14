import os

dataset = {
 'SingleElectron_EraB' : '/SingleElectron/Run2017B-31Mar2018-v1/MINIAOD',
 'SingleElectron_EraC' : '/SingleElectron/Run2017C-31Mar2018-v1/MINIAOD',
 'SingleElectron_EraD' : '/SingleElectron/Run2017D-31Mar2018-v1/MINIAOD',
 'SingleElectron_EraE' : '/SingleElectron/Run2017E-31Mar2018-v1/MINIAOD',
 'SingleElectron_EraF' : '/SingleElectron/Run2017F-31Mar2018-v1/MINIAOD',
 'SingleMuon_EraB' : '/SingleMuon/Run2017B-31Mar2018-v1/MINIAOD',
 'SingleMuon_EraC' : '/SingleMuon/Run2017C-31Mar2018-v1/MINIAOD',
 'SingleMuon_EraD' : '/SingleMuon/Run2017D-31Mar2018-v1/MINIAOD',
 'SingleMuon_EraE' : '/SingleMuon/Run2017E-31Mar2018-v1/MINIAOD',
 'SingleMuon_EraF' : '/SingleMuon/Run2017F-31Mar2018-v1/MINIAOD',
 'Tau_EraB' : '/Tau/Run2017B-31Mar2018-v1/MINIAOD',
 'Tau_EraC' : '/Tau/Run2017C-31Mar2018-v1/MINIAOD',
 'Tau_EraD' : '/Tau/Run2017D-31Mar2018-v1/MINIAOD',
 'Tau_EraE' : '/Tau/Run2017E-31Mar2018-v1/MINIAOD',
 'Tau_EraF' : '/Tau/Run2017F-31Mar2018-v1/MINIAOD',
 'MuonEG_EraB' : '/MuonEG/Run2017B-31Mar2018-v1/MINIAOD',
 'MuonEG_EraC' : '/MuonEG/Run2017C-31Mar2018-v1/MINIAOD',
 'MuonEG_EraD' : '/MuonEG/Run2017D-31Mar2018-v1/MINIAOD',
 'MuonEG_EraE' : '/MuonEG/Run2017E-31Mar2018-v1/MINIAOD',
 'MuonEG_EraF' : '/MuonEG/Run2017F-31Mar2018-v1/MINIAOD',

}

#if __name__ == '__main__':
from CRABAPI.RawCommand import crabCommand

def submit(config):
  res = crabCommand('submit', config = config)

from CRABClient.UserUtilities import config
from multiprocessing import Process

config = config()
name = 'data2017_31Mar2018_09Jun2020'
config.General.workArea = 'crab_'+name
config.General.transferOutputs = True
config.General.transferLogs = False

config.JobType.pluginName = 'Analysis'
config.JobType.inputFiles = ['Fall17_17Nov2017_V32_102X_DATA.db']
config.JobType.allowUndistributedCMSSW = True

config.section_('Data') 
config.Data.publication = False
config.Data.inputDBS = 'global'
config.Data.splitting = 'LumiBased'
config.Data.lumiMask = '/afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions17/13TeV/ReReco/Cert_294927-306462_13TeV_EOY2017ReReco_Collisions17_JSON.txt'

config.Site.storageSite = 'T2_US_Wisconsin'
#config.Site.whitelist = ["T2_US_Wisconsin"]
#config.Site.blacklist = ['T2_CH_CERN']

#listOfSamples = ['MET2018A', 'MET2018B', 'MET2018C']
listOfSamples = ['SingleElectron_EraB', 'SingleElectron_EraC', 'SingleElectron_EraD', 'SingleElectron_EraE', 'SingleElectron_EraF', 'SingleMuon_EraB', 'SingleMuon_EraC', 'SingleMuon_EraD', 'SingleMuon_EraE', 'SingleMuon_EraF', 'Tau_EraB', 'Tau_EraC', 'Tau_EraD', 'Tau_EraE', 'Tau_EraF', 'MuonEG_EraB', 'MuonEG_EraC', 'MuonEG_EraD', 'MuonEG_EraE', 'MuonEG_EraF']

for sample in listOfSamples:  
  os.popen('cp run_102X_data2017.py run_102X_data2017_'+sample+'.py')
  with open('run_102X_data2017_'+sample+'.py') as oldFile:
    newText = oldFile.read().replace('Ntuple_data2017.root', 'Ntuple_data2017_'+sample+'.root')
  with open('run_102X_data2017_'+sample+'.py', 'w') as newFile:
    newFile.write(newText)

  config.General.requestName = 'job_'+sample
  
  config.JobType.psetName = 'run_102X_data2017_'+sample+'.py'
  config.JobType.outputFiles = ['Ntuple_data2017_'+sample+'.root']
  
  config.Data.inputDataset   = dataset[sample]
  config.Data.unitsPerJob = 13
  config.Data.totalUnits = -1
  config.Data.outLFNDirBase = '/store/user/jmadhusu/'+name
  p = Process(target=submit, args=(config,))
  p.start()
  p.join()

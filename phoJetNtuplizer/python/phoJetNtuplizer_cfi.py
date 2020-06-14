import FWCore.ParameterSet.Config as cms

phoJetNtuplizer = cms.EDAnalyzer('phoJetNtuplizer',
                                 debug                                = cms.bool(False),
                                 saveAll                              = cms.bool(False),
                                 is_Data                              = cms.bool(True),
                                 runEventInfo                         = cms.bool(True),
                                 runPhotons                           = cms.bool(True),
                                 runJets                              = cms.bool(True),
                                 runak8Jets                           = cms.bool(False),
                                 runJetWidthCalculator                = cms.bool(False),
                                 runEle                               = cms.bool(True),
                                 runMuon                              = cms.bool(True),
                                 runTaus                              = cms.bool(True),
                                 runMet                               = cms.bool(True),
                                 runGenInfo                           = cms.bool(False),
                                 
                                 rhoToken                             = cms.InputTag("fixedGridRhoFastjetAll"),
                                 rhoCentralToken                      = cms.InputTag("fixedGridRhoFastjetCentralNeutral"),
                                 vtxToken                             = cms.InputTag("offlineSlimmedPrimaryVertices"),
                                 
                                 triggerResults                       = cms.InputTag("TriggerResults", "", "HLT"),
                                 patTriggerResults                    = cms.InputTag("TriggerResults", "", "PAT"),
                                 recoTriggerResults                   = cms.InputTag("TriggerResults", "", "RECO"),
                                 trgFilterDeltaPtCut                  = cms.double(0.5),
                                 trgFilterDeltaRCut                   = cms.double(0.3),
                                 triggerEvent                         = cms.InputTag("slimmedPatTrigger", "", ""),
                                 
                                 
                                 photonToken                          =  cms.InputTag("slimmedPhotons"),
                                 
                                 ebReducedRecHitCollection            = cms.InputTag("reducedEgamma","reducedEBRecHits"),
                                 eeReducedRecHitCollection            = cms.InputTag("reducedEgamma","reducedEERecHits"),
                                 esReducedRecHitCollection            = cms.InputTag("reducedEgamma","reducedESRecHits"),
                                 
                                 jetsAK4Token                          = cms.InputTag("slimmedJets"), 
                                 jetsAK8Token                          = cms.InputTag("slimmedJetsAK8"), 
                                 
                                 electronToken                        = cms.InputTag("slimmedElectrons"),
                                 packedPFCands                        = cms.InputTag("packedPFCandidates"),
                                 
                                 muonToken                            = cms.InputTag("slimmedMuons"),
                                 
                                 #tausToken                            = cms.InputTag("NewTauIDsEmbedded"),
                                 tausToken                            = cms.InputTag("slimmedTausNewID"),
                                 pfmetToken                           = cms.InputTag("slimmedMETs"),
                                 
                                 pfAllCandidate                       = cms.InputTag("particleFlow"),
                                 
                                 elePFClusEcalIsoProducer             = cms.InputTag("electronEcalPFClusterIsolationProducer"),
                                 elePFClusHcalIsoProducer             = cms.InputTag("electronHcalPFClusterIsolationProducer"),
                                 
                                 
                                 generatorToken                       = cms.InputTag("generator"),
                                 lheEventToken                        = cms.InputTag("externalLHEProducer"),
                                 pileupCollection                     = cms.InputTag("slimmedAddPileupInfo"),
                                 genParticleToken                     = cms.InputTag("prunedGenParticles"),
                                 tauHadronicSrc                       = cms.InputTag("tauGenJetsSelectorAllHadrons"),
                                 tauElectronicSrc                     = cms.InputTag("tauGenJetsSelectorElectrons"),
                                 tauMuonicSrc                         = cms.InputTag("tauGenJetsSelectorMuons"),

)

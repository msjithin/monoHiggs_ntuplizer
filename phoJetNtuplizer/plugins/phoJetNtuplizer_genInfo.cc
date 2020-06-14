#include "phoJetAnalysis/phoJetNtuplizer/interface/phoJetNtuplizer.h"


vector<float>    pdf_;
float            pthat_;
float            processID_;
float            genWeight_;
float            genHT_;
float            pdfWeight_;     
vector<float>    pdfSystWeight_;
//vector<double>    psWeight_;

Int_t            nPUInfo_;
vector<int>      nPU_;
vector<int>      puBX_;
vector<float>    puTrue_;

Int_t            nMC_;
vector<int>      mcPID;
vector<float>    mcVtx;
vector<float>    mcVty;
vector<float>    mcVtz;
vector<float>    mcPt;
vector<float>    mcMass;
vector<float>    mcEta;
vector<float>    mcPhi;
vector<float>    mcE;
vector<float>    mcEt;
vector<int>      mcStatus;
vector<UShort_t> mcStatusFlag;
vector<float>    mcCharge;
vector<int>      mcIndex;
vector<int>      mcDaughterPID;
vector<int>      mcMotherPID;    //// new 
vector<int>      mcMotherStatus;
vector<int>      mcMotherIndex;   
vector<int>      mcDaughterStatus;
vector<int>      mcDaughterList;
vector<UShort_t> mcTauDecayMode;
vector<UShort_t> genMatch2;
void phoJetNtuplizer::branchGenInfo(TTree* tree){

  tree->Branch("pdf",           &pdf_);
  tree->Branch("pthat",         &pthat_);
  tree->Branch("processID",     &processID_);
  tree->Branch("genWeight",     &genWeight_);
  tree->Branch("genHT",         &genHT_);
  tree->Branch("pdfWeight",     &pdfWeight_);
  tree->Branch("pdfSystWeight", &pdfSystWeight_);
//  tree->Branch("psWeight",      &psWeight_);

  tree->Branch("nPUInfo",       &nPUInfo_);
  tree->Branch("nPU",           &nPU_);
  tree->Branch("puBX",          &puBX_);
  tree->Branch("puTrue",        &puTrue_);

  tree->Branch("nMC",          &nMC_);
  tree->Branch("mcPID",        &mcPID);
  tree->Branch("mcVtx",        &mcVtx);
  tree->Branch("mcVty",        &mcVty);
  tree->Branch("mcVtz",        &mcVtz);
  tree->Branch("mcPt",         &mcPt);
  tree->Branch("mcMass",       &mcMass);
  tree->Branch("mcEta",        &mcEta);
  tree->Branch("mcPhi",        &mcPhi);
  tree->Branch("mcE",          &mcE);
  tree->Branch("mcEt",         &mcEt);
  tree->Branch("mcStatus",     &mcStatus);     // status of the particle
  tree->Branch("mcStatusFlag", &mcStatusFlag); //-999:non W or Z, 1:hardronic, 2:e, 3:mu, 4:tau
  tree->Branch("mcIndex",      &mcIndex);
  tree->Branch("mcDaughterPID",      &mcDaughterPID);
  tree->Branch("mcCharge",           &mcCharge);
  tree->Branch("mcMotherPID",        &mcMotherPID);
  tree->Branch("mcMotherIndex",        &mcMotherIndex);
  tree->Branch("mcMotherStatus",     &mcMotherStatus);     // status of the particle
  tree->Branch("mcDaughterStatus",   &mcDaughterStatus);     // status of the particle
  tree->Branch("mcDaughterList",     &mcDaughterList);
  tree->Branch("mcTauDecayMode",     &mcTauDecayMode);
  tree->Branch("genMatch2",          &genMatch2);
}

void phoJetNtuplizer::fillGenInfo(const edm::Event& iEvent){

  initGenInfo();

  edm::Handle<GenEventInfoProduct> genEventInfoHandle;
  iEvent.getByToken(generatorToken_, genEventInfoHandle);


  if (genEventInfoHandle.isValid()) {
    if (genEventInfoHandle->pdf()) {
      pdf_.push_back(genEventInfoHandle->pdf()->id.first);    //[0] PDG ID of incoming parton #1
      pdf_.push_back(genEventInfoHandle->pdf()->id.second);   //[1] PDG ID of incoming parton #2
      pdf_.push_back(genEventInfoHandle->pdf()->x.first);     //[2] x value of parton #1
      pdf_.push_back(genEventInfoHandle->pdf()->x.second);    //[3] x value of parton #2
      pdf_.push_back(genEventInfoHandle->pdf()->xPDF.first);  //[4] PDF weight for parton #1
      pdf_.push_back(genEventInfoHandle->pdf()->xPDF.second); //[5] PDF weight for parton #2
      pdf_.push_back(genEventInfoHandle->pdf()->scalePDF);    //[6] scale of the hard interaction
    }

    if (genEventInfoHandle->hasBinningValues())
      pthat_ = genEventInfoHandle->binningValues()[0];
    processID_ = genEventInfoHandle->signalProcessID();
    genWeight_ = genEventInfoHandle->weight();


  }else{
    edm::LogWarning("phoJetNtuplizer") << "no generator info in event";
  }

  // access generator level HT  
  edm::Handle<LHEEventProduct> lheEventProduct;
  iEvent.getByToken(lheEventToken_, lheEventProduct);

  double lheHt = 0.;
  if (lheEventProduct.isValid()){

    const lhef::HEPEUP& lheEvent = lheEventProduct->hepeup();
    std::vector<lhef::HEPEUP::FiveVector> lheParticles = lheEvent.PUP;
    size_t numParticles = lheParticles.size();
    for ( size_t idxParticle = 0; idxParticle < numParticles; ++idxParticle ) {
      int absPdgId = TMath::Abs(lheEvent.IDUP[idxParticle]);
      int status = lheEvent.ISTUP[idxParticle];
      if ( status == 1 && ((absPdgId >= 1 && absPdgId <= 6) || absPdgId == 21) ) { // quarks and gluons
	lheHt += TMath::Sqrt(TMath::Power(lheParticles[idxParticle][0], 2.) + TMath::Power(lheParticles[idxParticle][1], 2.)); // first entry is px, second py
      }                          
    }

    pdfWeight_ = lheEventProduct->originalXWGTUP(); // PDF weight of this event !
    for (unsigned i = 0; i < lheEventProduct->weights().size(); ++i) {
      pdfSystWeight_.push_back(lheEventProduct->weights()[i].wgt);
    }
  } else{ 
    edm::LogWarning("phoJetNtuplizer") << "no lheEventProduct info in event";
  }
  genHT_=lheHt;

  edm::Handle<vector<PileupSummaryInfo> > genPileupHandle;           
  iEvent.getByToken(puCollection_, genPileupHandle);       

  if (!genPileupHandle.isValid()) { 
    edm::LogWarning("phoJetNtuplizer") << "no PileupSummaryInfo info in event";
    return;                                 
  }
  

  for (vector<PileupSummaryInfo>::const_iterator pu = genPileupHandle->begin(); pu != genPileupHandle->end(); ++pu) {

    nPU_   .push_back(pu->getPU_NumInteractions());                
    puTrue_.push_back(pu->getTrueNumInteractions());               
    puBX_  .push_back(pu->getBunchCrossing());                     

    nPUInfo_++;                                                    
  }

  ///---------

  edm::Handle<vector<reco::GenParticle> > genParticlesHandle;        
  iEvent.getByToken(genParticlesToken_, genParticlesHandle);         
    /// added from fsa 
  // Try and get gen taus built from gen products if they were included
  edm::Handle<std::vector<reco::GenJet>> tausHadronic;
  iEvent.getByToken(genHadronicTausToken_, tausHadronic);
  edm::Handle<std::vector<reco::GenJet>> tausElectronic;
  iEvent.getByToken(genElectronicTausToken_, tausElectronic);
  edm::Handle<std::vector<reco::GenJet>> tausMuonic;
  iEvent.getByToken(genMuonicTausToken_, tausMuonic);
  std::vector<reco::GenJet> hTaus;
  std::vector<reco::GenJet> eTaus;
  std::vector<reco::GenJet> mTaus;

  /////

  if (!genParticlesHandle.isValid()) {                               
    edm::LogWarning("ggNtuplizer") << "no gen particle info in event";                         
    return;                                                          
  }                                                                  

  int genIndex = 0;  

  for (vector<reco::GenParticle>::const_iterator ip = genParticlesHandle->begin(); ip != genParticlesHandle->end(); ++ip) {
    genIndex++;

    /*
    int status = ip->status();
    //bool stableFinalStateParticle = status == 1 && ip->pt() > 5.0;
    
    bool quarks = abs(ip->pdgId())<7;
       
    // keep non-FSR photons with pT > 5.0 and all leptons with pT > 3.0;
    bool photonOrLepton =
      (ip->pdgId() == 22 && (ip->isPromptFinalState() || ip->isLastCopy())) ||
      (status == 1 && abs(ip->pdgId()) == 11 && (ip->isPromptFinalState() || ip->isLastCopy())) ||               
      (status == 1 && abs(ip->pdgId()) == 13 && (ip->isPromptFinalState() || ip->isLastCopy())) ||
      (status == 1 && (abs(ip->pdgId()) == 12 || abs(ip->pdgId()) == 14 || abs(ip->pdgId()) == 16)) ||
      (status == 1 && ( abs(ip->pdgId()) >= 11 && abs(ip->pdgId()) <= 16 ) && ip->pt() > 3.0)  ||
      (status < 10 && abs(ip->pdgId()) == 15 && ip->pt() > 3.0);
       
    // select also Z, W, H, top and b 
    bool heavyParticle =
      ((    ip->pdgId()  == 23 && ip->isHardProcess()) || 
       (abs(ip->pdgId()) == 24 && ip->isHardProcess()) || 
       (    ip->pdgId()  == 25 && ip->isHardProcess()) ||
       (abs(ip->pdgId()) ==  6 && ip->isHardProcess()) || 
       (abs(ip->pdgId()) ==  5 && ip->isHardProcess()));
       */

    const reco::Candidate *p = (const reco::Candidate*)&(*ip);
    if (!p->mother()) continue;

    //// addition from https://github.com/uwcms/FinalStateAnalysis/blob/miniAOD_9_4_0/DataFormats/src/PATFinalState.cc#L466
    if (tausHadronic.isValid()) { // Hadronic, electronic, and muonic are all run
      // together, so checking one should work for all
      //std::cout<<"tausHadronic.isValid()"<<endl;
      hTaus = *tausHadronic;
      eTaus = *tausElectronic;
      mTaus = *tausMuonic;
    }
    
    
    
    //    if(heavyParticle || photonOrLepton || quarks){
    if(ip->isPromptFinalState() || ip->isHardProcess() || ip->isLastCopy() || ip->fromHardProcessFinalState() || ip->isPromptDecayed() || ip->isDirectPromptTauDecayProductFinalState() ){

      mcPID    .push_back(p->pdgId());
      mcVtx    .push_back(p->vx());
      mcVty    .push_back(p->vy());
      mcVtz    .push_back(p->vz());
      mcPt     .push_back(p->pt());
      mcMass   .push_back(p->mass());
      mcEta    .push_back(p->eta());
      mcPhi    .push_back(p->phi());
      mcE      .push_back(p->energy());
      mcEt     .push_back(p->et());
      mcStatus .push_back(p->status());
      mcCharge .push_back(p->charge());
      
      UShort_t tmpStatusFlag = 0;
      if (ip->fromHardProcessFinalState())                setbit(tmpStatusFlag, 0);
      if (ip->isPromptFinalState())                       setbit(tmpStatusFlag, 1);
      if (ip->isHardProcess())                            setbit(tmpStatusFlag, 2);
      if (ip->isLastCopy())                               setbit(tmpStatusFlag, 3);
      if (ip->isPromptDecayed())                          setbit(tmpStatusFlag, 4);
      if (ip->isDirectPromptTauDecayProductFinalState())  setbit(tmpStatusFlag, 5);
      // if genParticle is W or Z, check its decay type
      if ( ip->pdgId() == 23 || abs(ip->pdgId()) == 24 ) {
	for (size_t k=0; k < p->numberOfDaughters(); ++k) {
	  const reco::Candidate *dp = p->daughter(k);
	  if (abs(dp->pdgId())<=6)                               setbit(tmpStatusFlag, 6);
	  else if (abs(dp->pdgId())==11 || abs(dp->pdgId())==12) setbit(tmpStatusFlag, 7);
	  else if (abs(dp->pdgId())==13 || abs(dp->pdgId())==14) setbit(tmpStatusFlag, 8);
	  else if (abs(dp->pdgId())==15 || abs(dp->pdgId())==16) setbit(tmpStatusFlag, 9);
	}
      } 
      // if genParticle is H, check its decay type
      if ( abs(ip->pdgId()) == 25 ) {
        for (size_t k=0; k < p->numberOfDaughters(); ++k) {
          const reco::Candidate *dp = p->daughter(k);
          if (abs(dp->pdgId())==15 )  setbit(tmpStatusFlag, 10);
	  //mcDaughterPID.push_back(dp->pdgId());
	}
      }
      //if ( p->isHadron()  ==true ) setbit(tmpStatusFlag, 9);
      //if ( p->isVisible() ==true ) setbit(tmpStatusFlag, 10);

      for (size_t k=0; k < p->numberOfDaughters(); ++k) {
	const reco::Candidate *dp = p->daughter(k);
	mcDaughterList.push_back(k);
	mcDaughterPID.push_back(dp->pdgId());
	mcDaughterStatus.push_back(dp->status());
      }
      //mcMotherIndex.push_back(ip->mother());
      //std::cout<<"numberOfMothers()="<<p->numberOfMothers()<<endl;
      //for (size_t k=0; k < p->numberOfMothers(); ++k) 
      { 
	const reco::Candidate *mp = p->mother();
	mcMotherPID.push_back(mp->pdgId());
	//std::cout<<"                 particle id:"<<p->pdgId()<<" mom id:"<<mp->pdgId()<<endl;
	mcMotherStatus.push_back(mp->status());
      }
      
      mcStatusFlag.push_back(tmpStatusFlag);
      mcIndex.push_back(genIndex-1);
      // Find the closest gen particle...
      UShort_t tmpGenMatch = 0;
      for (size_t k=0; k < p->numberOfDaughters(); ++k)
	{
	  //size_t k=0;
	  double closestPID = 999;
	  //bool closest_statusFlags = ip->isPromptFinalState();
	  bool closest_statusFlags = (ip->isPromptFinalState() || ip->isPromptDecayed() );
	  double closest_pt = -1; 
	  double closestDR = 999;
	  const reco::Candidate *dp = p->daughter(k);
	  for (vector<reco::GenParticle>::const_iterator ip2 = genParticlesHandle->begin(); ip2 != genParticlesHandle->end(); ++ip2) 
	    {
	      reco::Candidate *p2 = (reco::Candidate*)&(*ip2);
	      if ( p2==dp) continue;
	      if (!p2->mother()) continue;
	      double tmpDR = reco::deltaR( dp->p4(), p2->p4() );
	      if ( tmpDR < closestDR ) 
		{ 
		  closestPID = p2->pdgId(); 
		  closestDR = tmpDR;
		  closest_pt = p2->pt();
		}
	    }
	  // Loop over all versions of gen taus and find closest one
	  double closestDR_HTau = 999;
	  double closestDR_ETau = 999;
	  double closestDR_MTau = 999;
	  if ( hTaus.size() > 0 ) {
	    //std::cout<<"hTaus.size() > 0"<<endl;
	    for (size_t j = 0; j != hTaus.size(); ++j) {
	      double tmpDR = reco::deltaR( dp->p4(), hTaus[j].p4() );
	      if (tmpDR < closestDR_HTau) closestDR_HTau = tmpDR;
	    }
	  }
	  if ( eTaus.size() > 0 ) {
	    for (size_t j = 0; j != eTaus.size(); ++j) 
	      {
		double tmpDR = reco::deltaR(  dp->p4(), eTaus[j].p4() );
		if (tmpDR < closestDR_ETau) closestDR_ETau = tmpDR;
	      }
	  }
	  if ( mTaus.size() > 0 ) {
	    for (size_t j = 0; j != mTaus.size(); ++j) 
	      {
		double tmpDR = reco::deltaR( dp->p4(), mTaus[j].p4() );
		if (tmpDR < closestDR_MTau) closestDR_MTau = tmpDR;
	      }
	  }
	  // Now return the value based on which object is closer, the closest
	  // single gen particle, or the rebuild gen taus
	  // The first two codes are based off of matching to true electrons/muons
	  double closestGetTau = TMath::Min(closestDR_ETau, closestDR_MTau);
	  if (closestDR_HTau < closestGetTau) closestGetTau = closestDR_HTau;
	  //if(closestDR<2)      std::cout<<"closestDR:"<<closestDR<<endl;
	  //if(closestDR_ETau<2) std::cout<<"   closestDR_ETau:"<<closestDR_ETau<<endl;
	  //if(closestDR_MTau<2) std::cout<<"   closestDR_MTau:"<<closestDR_MTau<<endl;
	  //if(closestDR_HTau<2) std::cout<<"   closestDR_HTau:"<<closestDR_HTau<<endl;
	  
	  if (closestDR < closestGetTau) {
	    if (fabs(closestPID) == 11 && closest_pt > 8 && closest_statusFlags && closestDR < 0.2 ) {setbit(tmpGenMatch, 1);}
	    if (fabs(closestPID) == 13 && closest_pt > 8 && closest_statusFlags && closestDR < 0.2 ) {setbit(tmpGenMatch, 2);}
	  }
	  // Other codes based off of not matching previous 2 options
	  // as closest gen particle, retruns based on closest rebuilt gen tau
	  else if (closestDR_ETau < 0.2 && closestDR_ETau < TMath::Min(closestDR_MTau, closestDR_HTau)) {setbit(tmpGenMatch, 3);}
	  else if (closestDR_MTau < 0.2 && closestDR_MTau < TMath::Min(closestDR_ETau, closestDR_HTau)) {setbit(tmpGenMatch, 4);}
	  else if (closestDR_HTau < 0.2 && closestDR_HTau < TMath::Min(closestDR_ETau, closestDR_MTau)) {setbit(tmpGenMatch, 5);}
	  else {setbit(tmpGenMatch, 6);}  // No match, return 6 for "fake tau"
	}
      //if(tmpGenMatch!=-1 && tmpGenMatch!=6 )std::cout<<"tmpGenMatch: "<<tmpGenMatch<<endl;
      genMatch2.push_back(tmpGenMatch);
      
      ///////
      
      
      int numElectrons = 0;
      int numMuons = 0;
      int numChargedHadrons = 0;
      int numNeutralHadrons = 0;
      int numPhotons = 0;
      UShort_t tmpDecayMode = 0;                                                       
 
      if ( abs(p->pdgId()) == 15  ) {
	for (size_t k=0; k < p->numberOfDaughters(); ++k) {
	  const reco::Candidate *dp = p->daughter(k);
	  int d_pdg_id = abs(dp->pdgId());
	  if ( d_pdg_id == 12 || d_pdg_id == 14 || d_pdg_id == 16 ) continue;
	  switch ( d_pdg_id ) {
	  case 22: 
	    numPhotons++;
	    break;
	  case 11:
	    numElectrons++;
	    break;
	  case 13:
	    numMuons++;
	  break;
	  default : {if (dp->charge() != 0)  numChargedHadrons++; else numNeutralHadrons++;}
	  }
	}
	if (numElectrons == 1)  setbit(tmpDecayMode, 0);// return std::string("electron");
	else if (numMuons == 1) setbit(tmpDecayMode, 1);//return std::string("muon");
	switch ( numChargedHadrons ) {
	case 1 : 
	  if (numNeutralHadrons != 0) setbit(tmpDecayMode, 2);//return std::string("oneProngOther");
	  switch ( numPhotons ) {
	  case 0:
	    setbit(tmpDecayMode, 3); //return std::string("oneProng0Pi0");
	  case 2:
	    setbit(tmpDecayMode, 4);//return std::string("oneProng1Pi0");
	  case 4:
	    setbit(tmpDecayMode, 5);//return std::string("oneProng2Pi0");
	  default:
	    setbit(tmpDecayMode, 6);//return std::string("oneProngOther");
	  }
	case 3 : 
	  if (numNeutralHadrons != 0) setbit(tmpDecayMode, 7);//return std::string("threeProngOther");
	  switch ( numPhotons ) {
	  case 0:
	    setbit(tmpDecayMode, 8);//return std::string("threeProng0Pi0");
	  case 2:
	    setbit(tmpDecayMode, 9);//return std::string("threeProng1Pi0");
	  default:
	    setbit(tmpDecayMode, 10);//return std::string("threeProngOther");
	  }
	default:
	  setbit(tmpDecayMode, 11);//return std::string("rare");
	}
      }
      mcTauDecayMode.push_back(tmpDecayMode);

      nMC_++;
    }
  } // loop over gen-level particle

}



void phoJetNtuplizer::initGenInfo(){

  pdf_           .clear();
  pthat_         = -99;
  processID_     = -99;
  genWeight_     = -99;
  genHT_         = -99;
  pdfWeight_     = -99;
  pdfSystWeight_  .clear();
//  psWeight_       .clear();

  nPUInfo_       = 0;
  nPU_          .clear();
  puBX_         .clear();
  puTrue_       .clear();

  nMC_         = 0;
  mcPID       .clear();
  mcVtx       .clear();
  mcVty       .clear();
  mcVtz       .clear();
  mcPt        .clear();
  mcMass      .clear();
  mcEta       .clear();
  mcPhi       .clear();
  mcE         .clear();
  mcEt        .clear();
  mcStatus    .clear();
  mcStatusFlag.clear();
  mcIndex     .clear();
  mcDaughterPID.clear();
  mcCharge     .clear(); 
  mcMotherPID  .clear(); 
  mcMotherIndex.clear();
  mcMotherStatus  .clear();
  mcDaughterStatus.clear();
  mcDaughterList  .clear();
  mcTauDecayMode  .clear();
  genMatch2       .clear();
}

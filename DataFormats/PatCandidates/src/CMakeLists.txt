  cms_rootdict(DataFormatsPatCandidates classes_objects.h classes_def_objects.xml)
  cms_rootdict(DataFormatsPatCandidates classes_trigger.h classes_def_trigger.xml)
  cms_rootdict(DataFormatsPatCandidates classes_user.h classes_def_user.xml)
  cms_rootdict(DataFormatsPatCandidates classes_other.h classes_def_other.xml)
cms_add_library(DataFormatsPatCandidates TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreReflection
				FWCoreParameterSet
				FWCoreMessageLogger
				DataFormatsVertexReco
				DataFormatsSiStripDetId
				DataFormatsSiPixelDetId
				DataFormatsRecoCandidate
				DataFormatsProvenance
				DataFormatsMath
				DataFormatsGsfTrackReco
				DataFormatsGeometryCommonDetAlgo
				DataFormatsEgammaReco
				DataFormatsCLHEP
				SimDataFormatsJetMatching
				DataFormatsEcalRecHit
				DataFormatsCaloTowers
				DataFormatsHLTReco
				DataFormatsL1Trigger
				DataFormatsL1GlobalTrigger
				DataFormatsBTauReco
				DataFormatsHepMCCandidate
				DataFormatsTrackReco
				DataFormatsParticleFlowCandidate
				DataFormatsEgammaCandidates
				DataFormatsMETReco
				DataFormatsJetReco
				DataFormatsTauReco
				DataFormatsMuonReco
				DataFormatsCandidate
				DataFormatsCommon
				FWCoreCommon
				FWCoreUtilities
				boost
			)

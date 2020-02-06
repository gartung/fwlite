  cms_rootdict(DataFormatsPatCandidates classes_objects.h classes_def_objects.xml)
  cms_rootdict(DataFormatsPatCandidates classes_trigger.h classes_def_trigger.xml)
  cms_rootdict(DataFormatsPatCandidates classes_user.h classes_def_user.xml)
  cms_rootdict(DataFormatsPatCandidates classes_other.h classes_def_other.xml)
cms_add_library(DataFormatsPatCandidates TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsEcalRecHit
				DataFormatsCaloTowers
				DataFormatsHLTReco
				DataFormatsL1Trigger
				CondFormatsL1TObjects
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
				DataFormatsStdDictionaries
				DataFormatsCommon
				FWCoreCommon
				FWCoreUtilities
				boost
			)

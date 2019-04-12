  cms_rootdict(DataFormatsJetReco classes_1.h classes_def_1.xml)
  cms_rootdict(DataFormatsJetReco classes_2.h classes_def_2.xml)
  cms_rootdict(DataFormatsJetReco classes_3.h classes_def_3.xml)
  cms_rootdict(DataFormatsJetReco classes_4.h classes_def_4.xml)
cms_add_library(DataFormatsJetReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsTrackReco
				DataFormatsParticleFlowReco
				DataFormatsHepMCCandidate
				DataFormatsCommon
				DataFormatsCandidate
				DataFormatsParticleFlowCandidate
				DataFormatsCaloTowers
			)

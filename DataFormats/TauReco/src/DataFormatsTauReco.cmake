  cms_rootdict(DataFormatsTauReco classes_hlt.h classes_def_hlt.xml)
  cms_rootdict(DataFormatsTauReco classes_1.h classes_def_1.xml)
  cms_rootdict(DataFormatsTauReco classes_2.h classes_def_2.xml)
  cms_rootdict(DataFormatsTauReco classes_3.h classes_def_3.xml)
cms_add_library(DataFormatsTauReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsParticleFlowCandidate
				DataFormatsJetReco
				DataFormatsTrackReco
				DataFormatsMath
				DataFormatsCandidate
				DataFormatsRecoCandidate
				DataFormatsCommon
			)

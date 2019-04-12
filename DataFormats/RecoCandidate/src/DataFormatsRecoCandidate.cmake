  cms_rootdict(DataFormatsRecoCandidate classes.h classes_def.xml)
cms_add_library(DataFormatsRecoCandidate TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsGeneratorProducts
				DataFormatsEgammaReco
				DataFormatsCaloTowers
				DataFormatsTrackReco
				DataFormatsCommon
				DataFormatsCandidate
				DataFormatsCaloRecHit
				clhep
			)

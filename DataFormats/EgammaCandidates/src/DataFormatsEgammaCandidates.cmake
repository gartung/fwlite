  cms_rootdict(DataFormatsEgammaCandidates classes.h classes_def.xml)
cms_add_library(DataFormatsEgammaCandidates TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				DataFormatsGeometryCommonDetAlgo
				DataFormatsGsfTrackReco
				DataFormatsVertexReco
				DataFormatsTrackingRecHit
				DataFormatsTrackerRecHit2D
				DataFormatsTrackReco
				DataFormatsRecoCandidate
				DataFormatsMath
				DataFormatsCaloTowers
				DataFormatsCaloRecHit
				DataFormatsEgammaReco
				DataFormatsCommon
				DataFormatsCLHEP
				DataFormatsCandidate
			)

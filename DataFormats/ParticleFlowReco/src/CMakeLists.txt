  cms_rootdict(DataFormatsParticleFlowReco classes_1.h classes_def_1.xml)
  cms_rootdict(DataFormatsParticleFlowReco classes_2.h classes_def_2.xml)
cms_add_library(DataFormatsParticleFlowReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				DataFormatsTrackingRecHit
				DataFormatsMath
				DataFormatsGsfTrackReco
				DataFormatsGeometryVector
				DataFormatsEgammaReco
				DataFormatsEgammaCandidates
				DataFormatsDetId
				GeometryCaloGeometry
				FWCoreUtilities
				DataFormatsCandidate
				DataFormatsVertexReco
				DataFormatsTrajectorySeed
				DataFormatsTrackReco
				DataFormatsMuonReco
				DataFormatsCommon
				DataFormatsCaloRecHit
				rootcore
				rootmath
			)

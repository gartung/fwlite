cms_add_library(FireworksTracks TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FireworksCore
				DataFormatsTrackingRecHit
				DataFormatsTrackerRecHit2D
				DataFormatsTrackReco
				DataFormatsSiStripDetId
				DataFormatsSiStripCluster
				DataFormatsSiPixelDetId
				DataFormatsSiPixelCluster
				DataFormatsMuonDetId
				DataFormatsHcalDetId
				DataFormatsGsfTrackReco
				DataFormatsEcalDetId
				DataFormatsCaloTowers
				rootmath
				rootphysics
				rooteve
			)

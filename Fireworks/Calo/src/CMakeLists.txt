cms_add_library(FireworksCalo TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FireworksTracks
				FireworksCore
				DataFormatsJetReco
				DataFormatsFWLite
				DataFormatsEgammaReco
				DataFormatsEcalRecHit
				DataFormatsForwardDetId
				DataFormatsEcalDetId
				DataFormatsDetId
				DataFormatsCaloTowers
				DataFormatsCaloRecHit
				boost_system
				rootgpad
				rootphysics
				rooteve
				rootgeom
			)

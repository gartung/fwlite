cms_add_library(FireworksCalo TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FireworksTracks
				FireworksCore
				DataFormatsTauReco
				DataFormatsJetReco
				DataFormatsFWLite
				DataFormatsEgammaReco
				DataFormatsEcalRecHit
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

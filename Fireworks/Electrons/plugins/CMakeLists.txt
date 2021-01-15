cms_add_library(FireworksElectronsPlugins TYPE PLUGINS
			SOURCES
				*.cc
			PUBLIC
				FireworksTracks
				FireworksElectrons
				FireworksCore
				FireworksCandidates
				FireworksCalo
				DataFormatsGsfTrackReco
				DataFormatsEgammaReco
				DataFormatsEgammaCandidates
				rootinteractive
				rootphysics
				rooteve
				rootrgl
			)

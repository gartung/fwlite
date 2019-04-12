cms_add_library(FireworksElectrons TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FireworksCore
				DataFormatsEgammaReco
				rootcore
				Eve
				Geom
			)

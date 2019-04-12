cms_add_library(FireworksMuons TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FireworksTracks
				FireworksCore
				FireworksCandidates
				DataFormatsTrackReco
				DataFormatsMuonReco
				DataFormatsMuonDetId
				Eve
				Geom
				GeomPainter
			)

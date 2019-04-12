cms_add_library(FireworksVerticesPlugins TYPE PLUGINS
			SOURCES
				*.cc
			PUBLIC
				FireworksCandidates
				FireworksVertices
				FireworksCore
				DataFormatsVertexReco
				DataFormatsBTauReco
				roothistmatrix
				Eve
				Geom
				Core
			)

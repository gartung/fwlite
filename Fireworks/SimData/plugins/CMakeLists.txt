cms_add_library(FireworksSimDataPlugins TYPE PLUGINS
			SOURCES
				*.cc
			PUBLIC
				SimDataFormatsCaloAnalysis
				SimDataFormatsTrackingAnalysis
				SimDataFormatsVertex
				SimDataFormatsCaloHit
				SimDataFormatsTrackingHit
				SimDataFormatsTrack
				FireworksCore
				rooteve
				rooteg
				rootgeom
			)

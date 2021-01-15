cms_add_library(FireworksParticleFlow TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FireworksTracks
				FireworksCore
				DataFormatsParticleFlowCandidate
				rooteve
			)

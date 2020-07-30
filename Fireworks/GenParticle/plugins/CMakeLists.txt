cms_add_library(FireworksGenParticlePlugins TYPE PLUGINS
			SOURCES
				*.cc
			PUBLIC
				FireworksCore
				FireworksCandidates
				DataFormatsHepMCCandidate
				rootcore
				rooteg
				rooteve
			)

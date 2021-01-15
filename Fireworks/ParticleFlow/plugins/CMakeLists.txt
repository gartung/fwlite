cms_add_library(FireworksParticleFlowPlugins TYPE PLUGINS
			SOURCES
				*.cc
			PUBLIC
				FireworksParticleFlow
				FireworksCandidates
				DataFormatsTrackReco
				DataFormatsPatCandidates
				DataFormatsParticleFlowReco
				DataFormatsParticleFlowCandidate
				DataFormatsJetReco
				DataFormatsEcalRecHit
				rooteve
				rootrgl
			)

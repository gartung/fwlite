cms_add_library(FireworksParticleFlowPlugins TYPE PLUGINS
			SOURCES
				*.cc
			PUBLIC
				FireworksParticleFlow
				DataFormatsTrackReco
				DataFormatsPatCandidates
				DataFormatsParticleFlowReco
				DataFormatsParticleFlowCandidate
				DataFormatsJetReco
				DataFormatsEcalRecHit
				rooteve
				rootrgl
			)

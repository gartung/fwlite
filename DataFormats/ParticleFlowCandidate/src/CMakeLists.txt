  cms_rootdict(DataFormatsParticleFlowCandidate classes.h classes_def.xml)
cms_add_library(DataFormatsParticleFlowCandidate TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsCSCRecHit
				DataFormatsDTRecHit
				DataFormatsGsfTrackReco
				DataFormatsTrackReco
				DataFormatsMath
				DataFormatsCommon
				DataFormatsCandidate
				DataFormatsEgammaCandidates
				DataFormatsParticleFlowReco
				rootcore
				rootmath
				clhepheader
			)

  cms_rootdict(DataFormatsParticleFlowCandidate classes.h classes_def.xml)
cms_add_library(DataFormatsParticleFlowCandidate TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsMuonReco
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

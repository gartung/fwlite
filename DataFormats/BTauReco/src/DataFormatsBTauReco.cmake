  cms_rootdict(DataFormatsBTauReco classes.h classes_def.xml)
cms_add_library(DataFormatsBTauReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsVertexReco
				DataFormatsTrackReco
				DataFormatsParticleFlowCandidate
				DataFormatsMath
				DataFormatsJetReco
				DataFormatsCommon
				boost
				clhep
				rootmath
			)

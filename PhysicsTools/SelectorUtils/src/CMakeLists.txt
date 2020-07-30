  cms_rootdict(PhysicsToolsSelectorUtils classes.h classes_def.xml)
cms_add_library(PhysicsToolsSelectorUtils TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCoreParameterSet
				FWCoreCommon
				DataFormatsVertexReco
				DataFormatsProvenance
				DataFormatsCommon
				DataFormatsBeamSpot
				DataFormatsTauReco
				DataFormatsMuonReco
				DataFormatsEgammaCandidates
				DataFormatsPatCandidates
				DataFormatsCandidate
				CommonToolsUtils
				rootcore
				root
				openssl
			)

cms_add_binary(calculateIdMD5 TYPE BINARY
			SOURCES
				calculateIdMD5.cc
			PUBLIC
				PhysicsToolsSelectorUtils
				PhysicsToolsFWLite
				PhysicsToolsUtilities
				CommonToolsUtils
				FWCoreParameterSetReader
				FWCoreParameterSet
				FWCoreFWLite
				DataFormatsFWLite
				DataFormatsPatCandidates
				root
				boost
			)

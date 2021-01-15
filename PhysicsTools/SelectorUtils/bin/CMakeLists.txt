cms_add_binary(calculateIdMD5 TYPE BINARY
			SOURCES
				calculateIdMD5.cc
			PUBLIC
				PhysicsToolsSelectorUtils
				PhysicsToolsFWLite
				FWCoreParameterSetReader
				FWCoreParameterSet
				FWCoreFWLite
				DataFormatsFWLite
				boost
				root
			)

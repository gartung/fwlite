cms_add_binary(FWLiteHistograms TYPE BINARY
			SOURCES
				FWLiteHistograms.cc
			PUBLIC
				PhysicsToolsFWLite
				FWCoreParameterSetReader
				FWCoreFWLite
				DataFormatsLuminosity
				DataFormatsFWLite
				boost
				root
			)
cms_add_binary(FWLiteLumiAccess TYPE BINARY
			SOURCES
				FWLiteLumiAccess.cc
			PUBLIC
				PhysicsToolsFWLite
				FWCoreParameterSetReader
				FWCoreFWLite
				DataFormatsLuminosity
				DataFormatsFWLite
				boost
				root
			)
cms_add_binary(FWLiteWithPythonConfig TYPE BINARY
			SOURCES
				FWLiteWithPythonConfig.cc
			PUBLIC
				PhysicsToolsFWLite
				FWCoreParameterSetReader
				FWCoreFWLite
				DataFormatsLuminosity
				DataFormatsFWLite
				boost
				root
			)
cms_add_binary(FWLiteWithSelectorUtils TYPE BINARY
			SOURCES
				FWLiteWithSelectorUtils.cc
			PUBLIC
				PhysicsToolsFWLite
				FWCoreParameterSetReader
				FWCoreFWLite
				DataFormatsLuminosity
				DataFormatsFWLite
				boost
				root
			)

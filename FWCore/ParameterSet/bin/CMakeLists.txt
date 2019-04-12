cms_add_binary(edmPluginHelp TYPE BINARY
			SOURCES
				edmPluginHelp.cpp
			PUBLIC
				FWCoreParameterSet
				boost
				FWCoreUtilities
				FWCorePluginManager
				boost_program_options
			)
cms_add_binary(edmWriteConfigs TYPE BINARY
			SOURCES
				edmWriteConfigs.cpp
			PUBLIC
				FWCoreParameterSet
				boost
				FWCoreUtilities
				FWCorePluginManager
				boost_program_options
			)

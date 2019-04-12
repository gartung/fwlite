cms_add_binary(cmsRunPyDev TYPE BINARY
			SOURCES
				cmsRunPyDev.cpp
			PUBLIC
				FWCorePyDevParameterSet
				FWCoreParameterSet
				FWCoreUtilities
				FWCoreServiceRegistry
				FWCorePluginManager
				FWCoreMessageLogger
				FWCoreFramework
				tbb
				boost
				boost_program_options
			)

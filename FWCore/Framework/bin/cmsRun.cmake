cms_add_binary(cmsRun TYPE BINARY
			SOURCES
				cmsRun.cpp
			PUBLIC
				FWCoreParameterSetReader
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

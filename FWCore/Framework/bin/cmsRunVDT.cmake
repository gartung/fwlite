cms_add_binary(cmsRunVDT TYPE BINARY
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
				vdt
				tbb
				boost
				boost_program_options
			)

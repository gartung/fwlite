cms_add_binary(cmsRunGlibC TYPE BINARY
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
				roothistmatrix
				tbb
				boost
				boost_program_options
			)

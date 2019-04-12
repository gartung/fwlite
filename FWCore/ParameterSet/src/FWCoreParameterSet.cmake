cms_add_library(FWCoreParameterSet TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCorePluginManager
				FWCoreMessageLogger
				DataFormatsProvenance
				tbb
				boost
				boost_filesystem
			)

cms_add_library(FWCorePluginManager TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				boost
				tbb
				boost_filesystem
			)

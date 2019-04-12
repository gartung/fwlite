cms_add_library(FWCoreUtilities TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				boost
				boost_filesystem
				boost_regex
				rootcore
				libuuid
				tbb
				md5
			)

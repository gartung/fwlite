cms_add_library(FWCoreUtilities TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				boost
				boost_regex
				libuuid
				fmt
				tbb
				md5
				stdcxx_fs
			)

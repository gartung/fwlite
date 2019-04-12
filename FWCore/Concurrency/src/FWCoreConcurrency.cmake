cms_add_library(FWCoreConcurrency TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				tbb
				xerces_c
			)

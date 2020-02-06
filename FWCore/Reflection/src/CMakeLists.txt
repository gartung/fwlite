cms_add_library(FWCoreReflection TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				rootcore
			)

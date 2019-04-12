cms_add_library(CommonToolsUtils TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				FWCoreUtilities
				boost
				roothistmatrix
			)

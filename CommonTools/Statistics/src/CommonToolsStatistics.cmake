cms_add_library(CommonToolsStatistics TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				DataFormatsCLHEP
				clhep
				boost
			)

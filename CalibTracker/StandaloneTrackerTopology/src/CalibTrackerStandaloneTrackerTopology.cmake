cms_add_library(CalibTrackerStandaloneTrackerTopology TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsTrackerCommon
				tinyxml2
			)

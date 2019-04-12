  cms_rootdict(DataFormatsPhase2TrackerCluster classes.h classes_def.xml)
cms_add_library(DataFormatsPhase2TrackerCluster TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsPhase2TrackerDigi
				DataFormatsCommon
				rootrflx
			)

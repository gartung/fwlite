  cms_rootdict(DataFormatsPhase2TrackerDigi classes.h classes_def.xml)
cms_add_library(DataFormatsPhase2TrackerDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCommon
			)

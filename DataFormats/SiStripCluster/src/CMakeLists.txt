  cms_rootdict(DataFormatsSiStripCluster classes.h classes_def.xml)
cms_add_library(DataFormatsSiStripCluster TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsSiStripDigi
				DataFormatsTrajectoryState
				DataFormatsCommon
			)

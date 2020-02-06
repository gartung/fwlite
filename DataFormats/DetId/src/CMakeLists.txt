  cms_rootdict(DataFormatsDetId classes.h classes_def.xml)
cms_add_library(DataFormatsDetId TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCommon
			)

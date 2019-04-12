  cms_rootdict(DataFormatsHcalDigi classes.h classes_def.xml)
cms_add_library(DataFormatsHcalDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsHcalDetId
				DataFormatsCommon
				boost
			)

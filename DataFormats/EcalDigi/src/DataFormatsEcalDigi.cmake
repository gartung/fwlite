  cms_rootdict(DataFormatsEcalDigi classes.h classes_def.xml)
cms_add_library(DataFormatsEcalDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsEcalDetId
				DataFormatsCommon
				boost
			)

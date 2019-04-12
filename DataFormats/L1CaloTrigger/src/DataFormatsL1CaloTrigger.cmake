  cms_rootdict(DataFormatsL1CaloTrigger classes.h classes_def.xml)
cms_add_library(DataFormatsL1CaloTrigger TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsDetId
				DataFormatsCommon
			)

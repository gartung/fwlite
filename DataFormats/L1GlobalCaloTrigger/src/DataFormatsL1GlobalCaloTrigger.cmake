  cms_rootdict(DataFormatsL1GlobalCaloTrigger classes.h classes_def.xml)
cms_add_library(DataFormatsL1GlobalCaloTrigger TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsL1CaloTrigger
				DataFormatsCommon
				boost
			)

  cms_rootdict(DataFormatsCSCDigi classes.h classes_def.xml)
cms_add_library(DataFormatsCSCDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsGEMDigi
				DataFormatsMuonDetId
				DataFormatsCommon
			)

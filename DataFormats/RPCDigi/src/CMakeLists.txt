  cms_rootdict(DataFormatsRPCDigi classes.h classes_def.xml)
cms_add_library(DataFormatsRPCDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				CondFormatsRPCObjects
				DataFormatsMuonDetId
				DataFormatsCommon
			)

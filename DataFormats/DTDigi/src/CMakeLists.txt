  cms_rootdict(DataFormatsDTDigi classes.h classes_def.xml)
cms_add_library(DataFormatsDTDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsFEDRawData
				DataFormatsMuonDetId
				DataFormatsCommon
			)

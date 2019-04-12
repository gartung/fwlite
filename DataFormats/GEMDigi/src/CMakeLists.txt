  cms_rootdict(DataFormatsGEMDigi classes.h classes_def.xml)
cms_add_library(DataFormatsGEMDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsGEMRecHit
				DataFormatsMuonDetId
				DataFormatsCommon
			)

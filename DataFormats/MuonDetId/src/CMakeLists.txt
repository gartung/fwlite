  cms_rootdict(DataFormatsMuonDetId classes.h classes_def.xml)
cms_add_library(DataFormatsMuonDetId TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsDetId
			)

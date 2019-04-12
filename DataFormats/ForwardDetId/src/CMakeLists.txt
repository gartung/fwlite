  cms_rootdict(DataFormatsForwardDetId classes.h classes_def.xml)
cms_add_library(DataFormatsForwardDetId TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsDetId
				FWCoreUtilities
			)

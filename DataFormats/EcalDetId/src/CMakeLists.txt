  cms_rootdict(DataFormatsEcalDetId classes.h classes_def.xml)
cms_add_library(DataFormatsEcalDetId TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsDetId
				DataFormatsCommon
				boost
			)

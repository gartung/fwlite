  cms_rootdict(DataFormatsHGCRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsHGCRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsHcalDetId
				DataFormatsForwardDetId
				DataFormatsCommon
				DataFormatsCaloRecHit
			)

  cms_rootdict(DataFormatsFTLRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsFTLRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsDetId
				DataFormatsTrackingRecHit
				DataFormatsForwardDetId
				DataFormatsCommon
				DataFormatsCaloRecHit
			)

  cms_rootdict(DataFormatsHcalRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsHcalRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsHcalDigi
				DataFormatsHcalDetId
				DataFormatsCommon
				DataFormatsCaloRecHit
			)

  cms_rootdict(DataFormatsEcalRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsEcalRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsEcalDigi
				DataFormatsEcalDetId
				DataFormatsCommon
				DataFormatsCaloRecHit
			)

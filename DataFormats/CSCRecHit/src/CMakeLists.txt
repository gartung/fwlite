  cms_rootdict(DataFormatsCSCRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsCSCRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsTrackingRecHit
				DataFormatsMuonDetId
				DataFormatsCommon
			)

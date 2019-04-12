  cms_rootdict(DataFormatsRPCRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsRPCRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsTrackingRecHit
				DataFormatsMuonDetId
				DataFormatsCommon
			)

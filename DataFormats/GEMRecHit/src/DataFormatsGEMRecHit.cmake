  cms_rootdict(DataFormatsGEMRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsGEMRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCSCRecHit
				DataFormatsGeometryVector
				DataFormatsTrackingRecHit
				DataFormatsMuonDetId
				DataFormatsCommon
				rootrflx
			)

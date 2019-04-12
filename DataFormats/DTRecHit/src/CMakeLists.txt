  cms_rootdict(DataFormatsDTRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsDTRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsTrackingRecHit
				DataFormatsMuonDetId
				DataFormatsGeometryVector
				DataFormatsGeometrySurface
				DataFormatsDTDigi
				DataFormatsCommon
			)

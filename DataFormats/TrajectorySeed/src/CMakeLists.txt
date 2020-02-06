  cms_rootdict(DataFormatsTrajectorySeed classes.h classes_def.xml)
cms_add_library(DataFormatsTrajectorySeed TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				GeometryCommonDetUnit
				FWCoreUtilities
				DataFormatsTrackingRecHit
				DataFormatsSiPixelDetId
				DataFormatsSiStripDetId
				DataFormatsTrajectoryState
				DataFormatsCLHEP
				DataFormatsCommon
				clhepheader
			)

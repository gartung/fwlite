  cms_rootdict(DataFormatsTrackerRecHit2D classes.h classes_def.xml)
cms_add_library(DataFormatsTrackerRecHit2D TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				GeometryCommonDetUnit
				FWCoreFramework
				FWCoreMessageLogger
				DataFormatsPhase2TrackerCluster
				DataFormatsTrajectorySeed
				DataFormatsTrackingRecHit
				DataFormatsFTLRecHit
				DataFormatsCLHEP
				DataFormatsCommon
			)

  cms_rootdict(DataFormatsTrajectorySeed classes.h classes_def.xml)
cms_add_library(DataFormatsTrajectorySeed TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsTrackingRecHit
				DataFormatsTrajectoryState
				DataFormatsCLHEP
				DataFormatsCommon
				clhepheader
			)

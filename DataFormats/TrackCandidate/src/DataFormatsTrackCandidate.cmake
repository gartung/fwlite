  cms_rootdict(DataFormatsTrackCandidate classes.h classes_def.xml)
cms_add_library(DataFormatsTrackCandidate TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsTrajectorySeed
				DataFormatsTrackingRecHit
				DataFormatsCLHEP
				DataFormatsCommon
				clhepheader
			)

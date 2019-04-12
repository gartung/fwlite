  cms_rootdict(DataFormatsHcalIsolatedTrack classes.h classes_def.xml)
cms_add_library(DataFormatsHcalIsolatedTrack TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				DataFormatsL1Trigger
				DataFormatsTrackReco
				DataFormatsRecoCandidate
				DataFormatsMath
				DataFormatsCommon
				DataFormatsCandidate
			)

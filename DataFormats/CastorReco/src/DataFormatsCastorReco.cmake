  cms_rootdict(DataFormatsCastorReco classes.h classes_def.xml)
cms_add_library(DataFormatsCastorReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsHcalRecHit
				DataFormatsCandidate
				DataFormatsCommon
			)

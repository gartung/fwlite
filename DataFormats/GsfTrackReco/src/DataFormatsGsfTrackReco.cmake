  cms_rootdict(DataFormatsGsfTrackReco classes.h classes_def.xml)
cms_add_library(DataFormatsGsfTrackReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsTrackReco
				DataFormatsCommon
			)

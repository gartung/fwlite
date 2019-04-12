  cms_rootdict(DataFormatsEgammaTrackReco classes.h classes_def.xml)
cms_add_library(DataFormatsEgammaTrackReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsTrackReco
				DataFormatsCommon
				clhepheader
			)

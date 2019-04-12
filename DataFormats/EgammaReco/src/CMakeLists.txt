  cms_rootdict(DataFormatsEgammaReco classes.h classes_def.xml)
cms_add_library(DataFormatsEgammaReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsTrackReco
				DataFormatsTrajectorySeed
				DataFormatsTrackingRecHit
				DataFormatsCaloRecHit
				DataFormatsCommon
				clhepheader
			)

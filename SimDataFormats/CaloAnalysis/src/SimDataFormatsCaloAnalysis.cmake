  cms_rootdict(SimDataFormatsCaloAnalysis classes.h classes_def.xml)
cms_add_library(SimDataFormatsCaloAnalysis TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsVertex
				SimDataFormatsCaloHit
				SimDataFormatsTrack
				DataFormatsHepMCCandidate
				SimDataFormatsGeneratorProducts
				SimDataFormatsEncodedEventId
				DataFormatsTrackReco
				DataFormatsMath
				DataFormatsCommon
				DataFormatsCandidate
				clhepheader
			)

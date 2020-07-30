  cms_rootdict(SimDataFormatsTrackingAnalysis classes.h classes_def.xml)
cms_add_library(SimDataFormatsTrackingAnalysis TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsVertex
				SimDataFormatsTrack
				SimDataFormatsGeneratorProducts
				SimDataFormatsEncodedEventId
				DataFormatsHepMCCandidate
				DataFormatsTrackReco
				DataFormatsMath
				DataFormatsCommon
				clhepheader
			)

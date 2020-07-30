  cms_rootdict(SimDataFormatsCaloAnalysis classes.h classes_def.xml)
cms_add_library(SimDataFormatsCaloAnalysis TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsCaloHit
				SimDataFormatsTrack
				DataFormatsHepMCCandidate
				DataFormatsMath
				DataFormatsCommon
				clhepheader
			)

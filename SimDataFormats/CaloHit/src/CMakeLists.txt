  cms_rootdict(SimDataFormatsCaloHit classes.h classes_def.xml)
cms_add_library(SimDataFormatsCaloHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsEncodedEventId
				DataFormatsMath
				DataFormatsCommon
				boost
			)

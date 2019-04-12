  cms_rootdict(SimDataFormatsVertex classes.h classes_def.xml)
cms_add_library(SimDataFormatsVertex TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsEncodedEventId
				DataFormatsMath
				DataFormatsCommon
			)

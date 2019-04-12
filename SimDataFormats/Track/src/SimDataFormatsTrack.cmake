  cms_rootdict(SimDataFormatsTrack classes.h classes_def.xml)
cms_add_library(SimDataFormatsTrack TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsEncodedEventId
				DataFormatsMath
				DataFormatsCommon
			)

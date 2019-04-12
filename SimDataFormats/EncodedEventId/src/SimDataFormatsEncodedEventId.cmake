  cms_rootdict(SimDataFormatsEncodedEventId classes.h classes_def.xml)
cms_add_library(SimDataFormatsEncodedEventId TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				boost
				rootcore
			)

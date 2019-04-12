  cms_rootdict(SimDataFormatsTrackerDigiSimLink classes.h classes_def.xml)
cms_add_library(SimDataFormatsTrackerDigiSimLink TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsEncodedEventId
				DataFormatsCommon
				boost
			)

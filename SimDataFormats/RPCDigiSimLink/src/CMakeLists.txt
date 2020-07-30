  cms_rootdict(SimDataFormatsRPCDigiSimLink classes.h classes_def.xml)
cms_add_library(SimDataFormatsRPCDigiSimLink TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsEncodedEventId
				DataFormatsCommon
				boost
			)

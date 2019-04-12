  cms_rootdict(SimDataFormatsDigiSimLinks classes.h classes_def.xml)
cms_add_library(SimDataFormatsDigiSimLinks TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsMuonDetId
				SimDataFormatsEncodedEventId
				DataFormatsCommon
				boost
			)

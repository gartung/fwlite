  cms_rootdict(SimDataFormatsRandomEngine classes.h classes_def.xml)
cms_add_library(SimDataFormatsRandomEngine TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsCommon
				boost
			)

  cms_rootdict(DataFormatsLuminosity classes.h classes_def.xml)
cms_add_library(DataFormatsLuminosity TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsCommon
				DataFormatsMath
			)

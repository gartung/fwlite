  cms_rootdict(DataFormatsFEDRawData classes.h classes_def.xml)
cms_add_library(DataFormatsFEDRawData TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsCommon
			)

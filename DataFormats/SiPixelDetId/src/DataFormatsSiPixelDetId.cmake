  cms_rootdict(DataFormatsSiPixelDetId classes.h classes_def.xml)
cms_add_library(DataFormatsSiPixelDetId TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				FWCoreUtilities
				DataFormatsDetId
			)

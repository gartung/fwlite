  cms_rootdict(DataFormatsSiPixelDigi classes.h classes_def.xml)
cms_add_library(DataFormatsSiPixelDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsSiPixelDetId
				DataFormatsCommon
			)

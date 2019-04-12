  cms_rootdict(DataFormatsSiPixelCluster classes.h classes_def.xml)
cms_add_library(DataFormatsSiPixelCluster TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCommon
			)

  cms_rootdict(DataFormatsSiStripDigi classes.h classes_def.xml)
cms_add_library(DataFormatsSiStripDigi TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCommon
				boost
			)

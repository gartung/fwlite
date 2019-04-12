  cms_rootdict(DataFormatsHistograms classes.h classes_def.xml)
cms_add_library(DataFormatsHistograms TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCommon
				boost
				roothistmatrix
			)

  cms_rootdict(FWCoreMessageLogger classes.h classes_def.xml)
cms_add_library(FWCoreMessageLogger TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsProvenance
				FWCoreUtilities
				boost
				fmt
				tinyxml2
				tbb
			)

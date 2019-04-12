  cms_rootdict(FWCoreMessageLogger classes.h classes_def.xml)
cms_add_library(FWCoreMessageLogger TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				boost
				tinyxml2
				tbb
			)

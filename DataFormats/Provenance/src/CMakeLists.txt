  cms_rootdict(DataFormatsProvenance classes.h classes_def.xml)
cms_add_library(DataFormatsProvenance TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				FWCoreUtilities
				boost
				rootcore
				tbb
			)

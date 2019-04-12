  cms_rootdict(FWCoreFWLite classes.h classes_def.xml)
cms_add_library(FWCoreFWLite TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCorePluginManager
				DataFormatsProvenance
				DataFormatsCommon
				rootcore
			)

  cms_rootdict(DataFormatsFWLite classes.h classes_def.xml)
cms_add_library(DataFormatsFWLite TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreReflection
				FWCoreUtilities
				FWCoreParameterSet
				FWCoreFWLite
				FWCoreCommon
				DataFormatsProvenance
				DataFormatsCommon
				rootcore
			)

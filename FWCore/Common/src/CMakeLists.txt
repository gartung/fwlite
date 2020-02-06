  cms_rootdict(FWCoreCommon classes.h classes_def.xml)
cms_add_library(FWCoreCommon TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCoreParameterSet
				DataFormatsCommon
				DataFormatsProvenance
			)

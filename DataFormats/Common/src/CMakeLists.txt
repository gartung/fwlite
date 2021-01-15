  cms_rootdict(DataFormatsCommon classes.h classes_def.xml)
cms_add_library(DataFormatsCommon TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCoreMessageLogger
				DataFormatsProvenance
				boost
			)

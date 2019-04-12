  cms_rootdict(DataFormatsL1GlobalTrigger classes.h classes_def.xml)
cms_add_library(DataFormatsL1GlobalTrigger TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCoreMessageLogger
				DataFormatsL1GlobalMuonTrigger
				DataFormatsStdDictionaries
				DataFormatsProvenance
				DataFormatsCommon
				boost
			)

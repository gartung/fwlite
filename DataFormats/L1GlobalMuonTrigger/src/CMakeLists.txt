  cms_rootdict(DataFormatsL1GlobalMuonTrigger classes.h classes_def.xml)
cms_add_library(DataFormatsL1GlobalMuonTrigger TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				DataFormatsCommon
			)

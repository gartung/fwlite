  cms_rootdict(DataFormatsL1Trigger classes.h classes_def.xml)
cms_add_library(DataFormatsL1Trigger TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsHcalDetId
				DataFormatsL1GlobalMuonTrigger
				DataFormatsL1GlobalCaloTrigger
				DataFormatsCommon
				DataFormatsCandidate
			)

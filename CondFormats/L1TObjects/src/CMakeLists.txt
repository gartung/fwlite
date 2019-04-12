  cms_rootdict(CondFormatsL1TObjects classes.h classes_def.xml)
cms_add_library(CondFormatsL1TObjects TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsStdDictionaries
				DataFormatsL1GlobalTrigger
				DataFormatsL1GlobalCaloTrigger
				DataFormatsL1GlobalMuonTrigger
				FWCoreUtilities
				FWCoreParameterSet
				DataFormatsMuonDetId
				CondFormatsSerialization
				boost
				boost_serialization
			)

  cms_rootdict(CondFormatsL1TObjects classes.h classes_def.xml)
cms_add_library(CondFormatsL1TObjects TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreMessageLogger
				FWCoreFramework
				DataFormatsL1CaloTrigger
				CondFormatsExternal
				DataFormatsL1GlobalTrigger
				DataFormatsL1GlobalCaloTrigger
				FWCoreUtilities
				FWCoreParameterSet
				CondFormatsSerialization
				boost
				boost_serialization
			)

  cms_rootdict(CondFormatsRPCObjects classes.h classes_def.xml)
cms_add_library(CondFormatsRPCObjects TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				CondFormatsSerialization
				CondFormatsL1TObjects
				FWCoreUtilities
				FWCoreMessageLogger
				DataFormatsMuonDetId
				DataFormatsDetId
				boost
				boost_serialization
			)

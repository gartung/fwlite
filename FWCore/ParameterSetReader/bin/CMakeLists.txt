cms_add_binary(edmConfigHashPSR TYPE BINARY
			SOURCES
				edmConfigHash.cpp
			PUBLIC
				FWCoreParameterSetReader
				FWCoreParameterSet
				boost
			)
cms_add_binary(edmParameterSetDumpPSR TYPE BINARY
			SOURCES
				edmParameterSetDump.cpp
			PUBLIC
				FWCoreParameterSetReader
				FWCoreParameterSet
				boost
			)

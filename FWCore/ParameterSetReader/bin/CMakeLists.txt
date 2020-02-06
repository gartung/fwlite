cms_add_binary(edmConfigHash TYPE BINARY
			SOURCES
				edmConfigHash.cpp
			PUBLIC
				FWCoreParameterSetReader
				FWCoreParameterSet
				boost
			)
cms_add_binary(edmParameterSetDump TYPE BINARY
			SOURCES
				edmParameterSetDump.cpp
			PUBLIC
				FWCoreParameterSetReader
				FWCoreParameterSet
				boost
			)

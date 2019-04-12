cms_add_binary(edmPluginDump TYPE BINARY
			SOURCES
				dump.cc
			PUBLIC
				FWCorePluginManager
				boost
				boost_program_options
			)
cms_add_binary(edmPluginRefresh TYPE BINARY
			SOURCES
				refresh.cc
			PUBLIC
				FWCorePluginManager
				boost
				boost_program_options
			)

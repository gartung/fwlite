cms_add_binary(cms_adler32 TYPE BINARY
			SOURCES
				adler32.cc
			PUBLIC
				fmt
				zlib
			)
cms_add_binary(edmToFriendlyClassName TYPE BINARY
			SOURCES
				edmToFriendlyClassName.cc
			PUBLIC
				FWCoreUtilities
			)

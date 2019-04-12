cms_add_binary(edmBranchStorageSize TYPE BINARY
			SOURCES
				storageSizeForBranch.cc
			PUBLIC
				FWCoreFWLite
				rootcore
				boost
				boost_program_options
			)

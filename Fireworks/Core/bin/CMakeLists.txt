cms_add_binary(cmsShow.exe TYPE BINARY
			SOURCES
				cmsShow.cc
			PUBLIC
				FireworksCore
				FWCoreMessageLogger
				rootinteractive
				rooteve
			)
cms_add_binary(cmsShowSendReport TYPE BINARY
			SOURCES
				cmsShowSendReport.cc
			PUBLIC
				zlib
			)

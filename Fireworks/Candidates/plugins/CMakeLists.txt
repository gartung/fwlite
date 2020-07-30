cms_add_library(FireworksCandidatesPlugins TYPE PLUGINS
			SOURCES
				*.cc
			PUBLIC
				FireworksCalo
				FireworksCore
				FireworksCandidates
				DataFormatsCandidate
				rooteve
				boost_system
			)

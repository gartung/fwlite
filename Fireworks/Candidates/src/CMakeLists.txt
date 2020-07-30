cms_add_library(FireworksCandidates TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FireworksCalo
				FireworksCore
				DataFormatsPatCandidates
				DataFormatsCandidate
				boost_system
				rooteve
			)

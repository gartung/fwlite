cms_add_library(FWCoreServiceRegistry TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCorePluginManager
				FWCoreParameterSet
				DataFormatsProvenance
			)

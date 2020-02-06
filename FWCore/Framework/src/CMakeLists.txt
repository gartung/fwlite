cms_add_library(FWCoreFramework TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77 */*.cc */*.cxx */*.f */*.f77
			PUBLIC
				FWCoreVersion
				FWCoreUtilities
				FWCoreReflection
				FWCoreServiceRegistry
				FWCorePluginManager
				FWCoreParameterSet
				FWCoreMessageLogger
				FWCoreConcurrency
				FWCoreCommon
				DataFormatsProvenance
				DataFormatsCommon
				boost
				rootcore
			)

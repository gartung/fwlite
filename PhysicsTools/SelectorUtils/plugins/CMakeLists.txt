cms_add_library(PhysicsToolsSelectorUtils_plugins TYPE PLUGINS
			SOURCES
				*.cc
			PUBLIC
				FWCoreUtilities
				FWCoreParameterSet
				FWCoreMessageLogger
				FWCoreFramework
				DataFormatsTrackReco
				DataFormatsTauReco
				DataFormatsCandidate
				CommonToolsUtils
				PhysicsToolsSelectorUtils
			)

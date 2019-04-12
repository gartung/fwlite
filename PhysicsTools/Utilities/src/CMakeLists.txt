  cms_rootdict(PhysicsToolsUtilities classes.h classes_def.xml)
cms_add_library(PhysicsToolsUtilities TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsPileupSummaryInfo
				FWCoreCommon
				FWCoreUtilities
				DataFormatsProvenance
				DataFormatsCommon
				roofit
				rootcore
				root
				boost
			)

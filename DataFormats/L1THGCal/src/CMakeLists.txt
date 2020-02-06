  cms_rootdict(DataFormatsL1THGCal classes.h classes_def.xml)
cms_add_library(DataFormatsL1THGCal TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsGeometryVector
				DataFormatsForwardDetId
				DataFormatsDetId
				DataFormatsL1Trigger
				DataFormatsCandidate
				DataFormatsCommon
				rootrflx
				boost
			)

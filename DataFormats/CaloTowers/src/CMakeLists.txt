  cms_rootdict(DataFormatsCaloTowers classes.h classes_def.xml)
cms_add_library(DataFormatsCaloTowers TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsGeometryVector
				DataFormatsHcalDetId
				DataFormatsCandidate
				FWCoreUtilities
				DataFormatsMath
				DataFormatsDetId
				DataFormatsCommon
			)

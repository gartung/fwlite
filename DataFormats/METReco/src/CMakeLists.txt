  cms_rootdict(DataFormatsMETReco classes.h classes_def.xml)
cms_add_library(DataFormatsMETReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsHcalRecHit
				DataFormatsEcalRecHit
				DataFormatsJetReco
				DataFormatsRecoCandidate
				DataFormatsCommon
				root
			)

  cms_rootdict(DataFormatsHLTReco classes.h classes_def.xml)
cms_add_library(DataFormatsHLTReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCandidate
				DataFormatsCLHEP
				DataFormatsCommon
				FWCoreUtilities
				boost
			)

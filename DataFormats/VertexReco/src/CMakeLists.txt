  cms_rootdict(DataFormatsVertexReco classes.h classes_def.xml)
cms_add_library(DataFormatsVertexReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsTrackReco
				DataFormatsCommon
			)

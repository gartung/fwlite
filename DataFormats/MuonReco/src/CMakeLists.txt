  cms_rootdict(DataFormatsMuonReco classes.h classes_def.xml)
cms_add_library(DataFormatsMuonReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsVertexReco
				DataFormatsGEMRecHit
				DataFormatsCSCRecHit
				DataFormatsDTRecHit
				DataFormatsTrackReco
				DataFormatsRecoCandidate
				DataFormatsCommon
				rootmath
			)

  cms_rootdict(DataFormatsTrackReco classes.h classes_def.xml)
cms_add_library(DataFormatsTrackReco TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsTrackerCommon
				DataFormatsTrackingRecHit
				DataFormatsSiPixelCluster
				DataFormatsSiStripDetId
				DataFormatsSiPixelDetId
				DataFormatsBeamSpot
				DataFormatsMuonDetId
				DataFormatsTrackCandidate
				DataFormatsTrajectoryState
				DataFormatsCommon
				clhepheader
				rootmath
			)

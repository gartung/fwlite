  cms_rootdict(DataFormatsTrackingRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsTrackingRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				GeometryCommonDetUnit
				DataFormatsGeometrySurface
				DataFormatsCLHEP
				DataFormatsCommon
				clhep
			)

cms_add_library(GeometryCommonDetUnit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsDetId
				DataFormatsGeometrySurface
				clhep
			)

cms_add_library(GeometryCommonTopologies TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsDetId
				DataFormatsGeometrySurface
				DataFormatsGeometryCommonDetAlgo
				CondFormatsAlignment
				FWCoreMessageLogger
				vdt_headers
			)

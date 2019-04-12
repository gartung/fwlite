cms_add_library(GeometryGEMGeometry TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsMuonDetId
				GeometryCommonTopologies
				GeometryCommonDetUnit
			)

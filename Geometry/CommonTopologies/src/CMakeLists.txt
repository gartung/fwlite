cms_add_library(GeometryCommonTopologies TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				CondFormatsAlignment
				FWCoreMessageLogger
				vdt_headers
			)

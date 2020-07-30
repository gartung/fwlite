cms_add_library(FWCoreParameterSetReader TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCorePythonParameterSet
				FWCoreParameterSet
				py2_pybind11
			)

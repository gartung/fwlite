cms_add_library(FWCorePythonParameterSet TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCoreParameterSet
				DataFormatsProvenance
				python
				p2-pybind11
			)

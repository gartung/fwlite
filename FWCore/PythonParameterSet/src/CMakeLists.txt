cms_add_library(FWCorePythonParameterSet TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCoreParameterSet
				DataFormatsProvenance
				py2_pybind11
				python
			)

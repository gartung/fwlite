  cms_rootdict(DataFormatsCandidate classes.h classes_def.xml)
cms_add_library(DataFormatsCandidate TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				DataFormatsMath
				DataFormatsGeometryVector
				DataFormatsCommon
				rootmath
			)

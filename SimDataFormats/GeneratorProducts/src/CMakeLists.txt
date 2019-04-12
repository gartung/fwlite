  cms_rootdict(SimDataFormatsGeneratorProducts classes.h classes_def.xml)
cms_add_library(SimDataFormatsGeneratorProducts TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCommon
				FWCoreMessageLogger
				FWCoreUtilities
				hepmc
				xz
				roothistmatrix
			)

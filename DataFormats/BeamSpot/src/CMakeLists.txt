  cms_rootdict(DataFormatsBeamSpot classes.h classes_def.xml)
cms_add_library(DataFormatsBeamSpot TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCLHEP
				DataFormatsCommon
				rootcore
				rootsmatrix
				clhep
			)

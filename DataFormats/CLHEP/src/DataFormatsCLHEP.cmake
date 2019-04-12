  cms_rootdict(DataFormatsCLHEP classes.h classes_def.xml)
cms_add_library(DataFormatsCLHEP TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsMath
				clhep
				rootmath
			)

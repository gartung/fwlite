  cms_rootdict(FireworksTableWidget classes.h classes_def.xml)
cms_add_library(FireworksTableWidget TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				rootinteractive
			)

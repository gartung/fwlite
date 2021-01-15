  cms_rootdict(FireworksVertices classes.h classes_def.xml)
cms_add_library(FireworksVertices TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				rootcore
				opengl
				rooteve
				rootgeom
				rootphysics
				rootrgl
				rootcling
			)

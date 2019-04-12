  cms_rootdict(DataFormatsGeometrySurface classes.h classes_def.xml)
cms_add_library(DataFormatsGeometrySurface TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsGeometryVector
				boost
			)

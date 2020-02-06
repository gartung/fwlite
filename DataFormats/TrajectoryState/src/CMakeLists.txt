  cms_rootdict(DataFormatsTrajectoryState classes.h classes_def.xml)
cms_add_library(DataFormatsTrajectoryState TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsGeometryVector
				rootcore
			)

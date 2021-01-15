  cms_rootdict(FastSimDataFormatsExternal classes.h classes_def.xml)
cms_add_library(FastSimDataFormatsExternal TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsGeometryVector
				DataFormatsDetId
				DataFormatsGeometrySurface
				DataFormatsCommon
			)

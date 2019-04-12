  cms_rootdict(SimDataFormatsTrackingHit classes.h classes_def.xml)
cms_add_library(SimDataFormatsTrackingHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsEncodedEventId
				DataFormatsGeometryVector
				DataFormatsCommon
			)

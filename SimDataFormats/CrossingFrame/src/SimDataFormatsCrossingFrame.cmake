  cms_rootdict(SimDataFormatsCrossingFrame classes.h classes_def.xml)
cms_add_library(SimDataFormatsCrossingFrame TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				SimDataFormatsGeneratorProducts
				SimDataFormatsVertex
				SimDataFormatsTrackingHit
				SimDataFormatsTrack
				SimDataFormatsEncodedEventId
				SimDataFormatsCaloHit
				FWCoreUtilities
				FWCoreMessageLogger
				DataFormatsProvenance
				DataFormatsHcalDetId
				DataFormatsCommon
			)

  cms_rootdict(DataFormatsTrackerCommon classes.h classes_def.xml)
cms_add_library(DataFormatsTrackerCommon TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCoreMessageLogger
				DataFormatsSiStripDigi
				DataFormatsSiPixelCluster
				DataFormatsDetId
				DataFormatsSiPixelDetId
				DataFormatsSiStripCluster
				DataFormatsCommon
			)

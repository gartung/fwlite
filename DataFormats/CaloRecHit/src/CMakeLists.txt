  cms_rootdict(DataFormatsCaloRecHit classes.h classes_def.xml)
cms_add_library(DataFormatsCaloRecHit TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsDetId
				DataFormatsMath
				DataFormatsCommon
				rootmath
			)

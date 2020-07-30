  cms_rootdict(SimDataFormatsPileupSummaryInfo classes.h classes_def.xml)
cms_add_library(SimDataFormatsPileupSummaryInfo TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsProvenance
				DataFormatsCommon
				DataFormatsMath
				hepmc
			)

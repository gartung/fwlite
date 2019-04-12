  cms_rootdict(DataFormatsL1CSCTrackFinder classes.h classes_def.xml)
cms_add_library(DataFormatsL1CSCTrackFinder TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsMuonDetId
				DataFormatsL1GlobalMuonTrigger
				DataFormatsDetId
				DataFormatsCommon
				DataFormatsCSCDigi
			)

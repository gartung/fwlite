if(NOT DataFormatsL1CSCTrackFinder_FOUND)
  set(DataFormatsL1CSCTrackFinder_FOUND TRUE)
  mark_as_advanced(DataFormatsL1CSCTrackFinder_FOUND)
cms_find_package(DataFormatsMuonDetId)
cms_find_package(DataFormatsL1GlobalMuonTrigger)
cms_find_package(DataFormatsDetId)
cms_find_package(DataFormatsCommon)
cms_find_package(DataFormatsCSCDigi)
list(APPEND LIBS DataFormatsL1CSCTrackFinder)
endif()

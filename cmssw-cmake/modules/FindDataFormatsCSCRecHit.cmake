if(NOT DataFormatsCSCRecHit_FOUND)
  set(DataFormatsCSCRecHit_FOUND TRUE)
  mark_as_advanced(DataFormatsCSCRecHit_FOUND)
cms_find_package(DataFormatsTrackingRecHit)
cms_find_package(DataFormatsMuonDetId)
cms_find_package(DataFormatsCommon)
list(APPEND LIBS DataFormatsCSCRecHit)
endif()

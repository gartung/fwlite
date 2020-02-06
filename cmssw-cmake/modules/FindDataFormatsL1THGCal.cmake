if(NOT DataFormatsL1THGCal_FOUND)
  set(DataFormatsL1THGCal_FOUND TRUE)
  mark_as_advanced(DataFormatsL1THGCal_FOUND)
cms_find_package(FWCoreUtilities)
cms_find_package(DataFormatsGeometryVector)
cms_find_package(DataFormatsForwardDetId)
cms_find_package(DataFormatsDetId)
cms_find_package(DataFormatsL1Trigger)
cms_find_package(DataFormatsCandidate)
cms_find_package(DataFormatsCommon)
cms_find_package(rootrflx)
cms_find_package(boost)
list(APPEND LIBS DataFormatsL1THGCal)
endif()

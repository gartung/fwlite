if(NOT DataFormatsCommon_FOUND)
  set(DataFormatsCommon_FOUND TRUE)
  mark_as_advanced(DataFormatsCommon_FOUND)
cms_find_package(FWCoreUtilities)
cms_find_package(FWCoreMessageLogger)
cms_find_package(DataFormatsProvenance)
cms_find_package(boost)
list(APPEND LIBS DataFormatsCommon)
endif()

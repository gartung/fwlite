if(NOT DataFormatsHepMCCandidate_FOUND)
  set(DataFormatsHepMCCandidate_FOUND TRUE)
  mark_as_advanced(DataFormatsHepMCCandidate_FOUND)
cms_find_package(DataFormatsCommon)
cms_find_package(DataFormatsCandidate)
cms_find_package(root)
list(APPEND LIBS DataFormatsHepMCCandidate)
endif()

if(NOT DataFormatsHLTReco_FOUND)
  set(DataFormatsHLTReco_FOUND TRUE)
  mark_as_advanced(DataFormatsHLTReco_FOUND)
cms_find_package(DataFormatsMETReco)
cms_find_package(DataFormatsJetReco)
cms_find_package(DataFormatsEgammaCandidates)
cms_find_package(DataFormatsRecoCandidate)
cms_find_package(DataFormatsL1Trigger)
cms_find_package(DataFormatsCandidate)
cms_find_package(DataFormatsCLHEP)
cms_find_package(DataFormatsCommon)
cms_find_package(FWCoreUtilities)
list(APPEND LIBS DataFormatsHLTReco)
endif()

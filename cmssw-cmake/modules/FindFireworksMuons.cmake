if(NOT FireworksMuons_FOUND)
  set(FireworksMuons_FOUND TRUE)
  mark_as_advanced(FireworksMuons_FOUND)
cms_find_package(FireworksTracks)
cms_find_package(FireworksCore)
cms_find_package(FireworksCandidates)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsMuonReco)
cms_find_package(DataFormatsMuonDetId)
cms_find_package(rooteve)
cms_find_package(rootgeom)
cms_find_package(rootgeompainter)
list(APPEND LIBS FireworksMuons)
endif()

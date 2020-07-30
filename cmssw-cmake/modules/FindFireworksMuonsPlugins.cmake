if(NOT FireworksMuonsPlugins_FOUND)
  set(FireworksMuonsPlugins_FOUND TRUE)
  mark_as_advanced(FireworksMuonsPlugins_FOUND)
cms_find_package(FireworksMuons)
cms_find_package(FireworksCore)
cms_find_package(FireworksCandidates)
cms_find_package(FireworksCalo)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsRPCRecHit)
cms_find_package(DataFormatsMuonReco)
cms_find_package(DataFormatsMuonDetId)
cms_find_package(DataFormatsDTRecHit)
cms_find_package(DataFormatsGEMDigi)
cms_find_package(DataFormatsGEMRecHit)
cms_find_package(DataFormatsRPCDigi)
cms_find_package(DataFormatsDTDigi)
cms_find_package(DataFormatsCSCRecHit)
cms_find_package(DataFormatsCSCDigi)
cms_find_package(rootinteractive)
cms_find_package(rooteve)
cms_find_package(rootgeom)
cms_find_package(rootrgl)
list(APPEND LIBS FireworksMuonsPlugins)
endif()

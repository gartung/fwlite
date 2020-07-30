if(NOT FireworksTracks_FOUND)
  set(FireworksTracks_FOUND TRUE)
  mark_as_advanced(FireworksTracks_FOUND)
cms_find_package(FireworksCore)
cms_find_package(DataFormatsTrackingRecHit)
cms_find_package(DataFormatsTrackerRecHit2D)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsSiStripDetId)
cms_find_package(DataFormatsSiStripCluster)
cms_find_package(DataFormatsSiPixelDetId)
cms_find_package(DataFormatsSiPixelCluster)
cms_find_package(DataFormatsMuonDetId)
cms_find_package(DataFormatsHcalDetId)
cms_find_package(DataFormatsGsfTrackReco)
cms_find_package(DataFormatsEcalDetId)
cms_find_package(DataFormatsCaloTowers)
cms_find_package(rootmath)
cms_find_package(rootphysics)
cms_find_package(rooteve)
list(APPEND LIBS FireworksTracks)
endif()

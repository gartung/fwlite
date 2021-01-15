if(NOT FireworksCaloPlugins_FOUND)
  set(FireworksCaloPlugins_FOUND TRUE)
  mark_as_advanced(FireworksCaloPlugins_FOUND)
cms_find_package(FireworksCore)
cms_find_package(FireworksCalo)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsTauReco)
cms_find_package(DataFormatsMETReco)
cms_find_package(DataFormatsL1THGCal)
cms_find_package(DataFormatsL1Trigger)
cms_find_package(DataFormatsJetReco)
cms_find_package(DataFormatsHcalRecHit)
cms_find_package(DataFormatsEcalRecHit)
cms_find_package(DataFormatsEcalDetId)
cms_find_package(DataFormatsCaloTowers)
cms_find_package(DataFormatsCaloRecHit)
cms_find_package(rootinteractive)
cms_find_package(rooteve)
cms_find_package(rootrgl)
cms_find_package(rootgeom)
list(APPEND LIBS FireworksCaloPlugins)
endif()

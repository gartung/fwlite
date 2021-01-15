if(NOT FireworksTracksPlugins_FOUND)
  set(FireworksTracksPlugins_FOUND TRUE)
  mark_as_advanced(FireworksTracksPlugins_FOUND)
cms_find_package(FireworksCalo)
cms_find_package(FireworksTracks)
cms_find_package(FireworksCore)
cms_find_package(DataFormatsTrackingRecHit)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsSiStripDigi)
cms_find_package(DataFormatsSiStripCluster)
cms_find_package(DataFormatsSiPixelDigi)
cms_find_package(DataFormatsSiPixelCluster)
cms_find_package(DataFormatsScalers)
cms_find_package(DataFormatsDetId)
cms_find_package(DataFormatsCommon)
cms_find_package(DataFormatsBeamSpot)
cms_find_package(rootinteractive)
cms_find_package(rootphysics)
cms_find_package(rooteve)
cms_find_package(rootgeom)
cms_find_package(rootrgl)
list(APPEND LIBS FireworksTracksPlugins)
endif()

if(NOT FireworksElectrons_FOUND)
  set(FireworksElectrons_FOUND TRUE)
  mark_as_advanced(FireworksElectrons_FOUND)
cms_find_package(FireworksCore)
cms_find_package(DataFormatsEgammaReco)
cms_find_package(rootcore)
cms_find_package(Eve)
cms_find_package(Geom)
list(APPEND LIBS FireworksElectrons)
endif()

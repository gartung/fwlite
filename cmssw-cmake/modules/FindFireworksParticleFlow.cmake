if(NOT FireworksParticleFlow_FOUND)
  set(FireworksParticleFlow_FOUND TRUE)
  mark_as_advanced(FireworksParticleFlow_FOUND)
cms_find_package(FireworksCalo)
cms_find_package(FireworksTracks)
cms_find_package(FireworksCandidates)
cms_find_package(FireworksCore)
cms_find_package(DataFormatsParticleFlowCandidate)
cms_find_package(Eve)
list(APPEND LIBS FireworksParticleFlow)
endif()

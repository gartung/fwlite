if(NOT FireworksCandidatesPlugins_FOUND)
  set(FireworksCandidatesPlugins_FOUND TRUE)
  mark_as_advanced(FireworksCandidatesPlugins_FOUND)
cms_find_package(FireworksCore)
cms_find_package(FireworksCandidates)
cms_find_package(DataFormatsCandidate)
cms_find_package(Eve)
cms_find_package(RGL)
list(APPEND LIBS FireworksCandidatesPlugins)
endif()

if(NOT FireworksTableWidget_FOUND)
  set(FireworksTableWidget_FOUND TRUE)
  mark_as_advanced(FireworksTableWidget_FOUND)
cms_find_package(rootinteractive)
list(APPEND LIBS FireworksTableWidget)
endif()

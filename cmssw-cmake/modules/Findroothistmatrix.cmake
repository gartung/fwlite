if(NOT ROOTHISTMATRIX_FOUND)
  mark_as_advanced(ROOTHISTMATRIX_FOUND)
  set(ROOTHISTMATRIX_FOUND TRUE)
  cms_find_package(rootcore)
  list(APPEND LIBS Hist)
  list(APPEND LIBS Matrix)
endif()

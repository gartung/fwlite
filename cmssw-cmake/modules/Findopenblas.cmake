if(NOT OPENBLAS_FOUND)
  mark_as_advanced(OPENBLAS_FOUND)
  set(OPENBLAS_FOUND TRUE)
  list(APPEND INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include)
  list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
  list(APPEND LIBS openblas)
endif()

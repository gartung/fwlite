if(NOT ROOTGEOM_FOUND)
  mark_as_advanced(ROOTGEOM_FOUND)
  set(ROOTGEOM_FOUND TRUE)
  cms_find_package(rootrio)
  cms_find_package(rootmathcore)
  list(APPEND LIBS Geom)
endif()

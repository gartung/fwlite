if(NOT CLHEP_FOUND)
	mark_as_advanced(CLHEP_FOUND)
	set(CLHEP_FOUND TRUE)
	cms_find_package(root_cxxdefaults)
	list(APPEND INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include)
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
	list(APPEND LIBS CLHEP)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-error=unused-variable)
endif()

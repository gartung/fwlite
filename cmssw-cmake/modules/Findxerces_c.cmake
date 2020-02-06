if(NOT XERCES_C_FOUND)
	mark_as_advanced(XERCES_C_FOUND)
	set(XERCES_C_FOUND TRUE)
	cms_find_package(root_cxxdefaults)
	list(APPEND INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include)
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
	list(APPEND LIBS xerces-c)
endif()

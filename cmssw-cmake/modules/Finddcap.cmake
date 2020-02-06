if(NOT DCAP_FOUND)
	mark_as_advanced(DCAP_FOUND)
	set(DCAP_FOUND TRUE)
	cms_find_package(root_cxxdefaults)
	list(APPEND INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include)
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
	list(APPEND LIBS dcap)
endif()

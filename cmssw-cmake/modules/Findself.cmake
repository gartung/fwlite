if(NOT SELF_FOUND)
	mark_as_advanced(SELF_FOUND)
	set(SELF_FOUND TRUE)
	list(APPEND INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/src)
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
endif()

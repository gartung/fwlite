if(NOT PYTHON_FOUND)
	mark_as_advanced(PYTHON_FOUND)
	set(PYTHON_FOUND TRUE)
	cms_find_package(root_cxxdefaults)
	cms_find_package(sockets)
	list(APPEND INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include/${PYDOTVER})
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
	list(APPEND LIBS ${PYDOTVER})
endif()

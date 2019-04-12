if(NOT BOOST_PYTHON_FOUND)
	mark_as_advanced(BOOST_PYTHON_FOUND)
	set(BOOST_PYTHON_FOUND TRUE)
	cms_find_package(root_cxxdefaults)
	cms_find_package(python)
	list(APPEND INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include)
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
	list(APPEND LIBS boost_python27)
endif()

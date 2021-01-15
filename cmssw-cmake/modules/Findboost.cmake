if(NOT BOOST_FOUND)
	mark_as_advanced(BOOST_FOUND)
	set(BOOST_FOUND TRUE)
	cms_find_package(boost_header)
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
	list(APPEND LIBS boost_thread)
	list(APPEND LIBS boost_date_time)
endif()

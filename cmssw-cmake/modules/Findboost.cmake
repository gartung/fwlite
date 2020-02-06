if(NOT BOOST_FOUND)
	mark_as_advanced(BOOST_FOUND)
	set(BOOST_FOUND TRUE)
	cms_find_package(root_cxxdefaults)
	cms_find_package(sockets)
	list(APPEND INCLUDE_DIRS ${CMAKE_INSTALL_PREFIX}/include)
	list(APPEND LIBRARY_DIRS ${CMAKE_INSTALL_PREFIX}/lib)
	list(APPEND LIBS boost_thread)
	list(APPEND LIBS boost_signals)
	list(APPEND LIBS boost_date_time)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-error=unused-variable)
	list(APPEND PROJECT_CPPDEFINES BOOST_SPIRIT_THREADSAFE)
	list(APPEND PROJECT_CPPDEFINES PHOENIX_THREADSAFE)
endif()

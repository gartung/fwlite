if(NOT ROOT_FOUND)
	mark_as_advanced(ROOT_FOUND)
	set(ROOT_FOUND TRUE)
	cms_find_package(rootphysics)
endif()

if(NOT ROOTPHYSICS_FOUND)
	mark_as_advanced(ROOTPHYSICS_FOUND)
	set(ROOTPHYSICS_FOUND TRUE)
	cms_find_package(roothistmatrix)
	list(APPEND LIBS Physics)
endif()

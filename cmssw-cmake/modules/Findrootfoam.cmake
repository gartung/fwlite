if(NOT ROOTFOAM_FOUND)
	mark_as_advanced(ROOTFOAM_FOUND)
	set(ROOTFOAM_FOUND TRUE)
	cms_find_package(roothistmatrix)
	list(APPEND LIBS Foam)
endif()

if(NOT ROOTEVE_FOUND)
	mark_as_advanced(ROOTEVE_FOUND)
	set(ROOTEVE_FOUND TRUE)
	cms_find_package(rootgeompainter)
	cms_find_package(rootrgl)
	cms_find_package(rootged)
	list(APPEND LIBS Eve)
endif()

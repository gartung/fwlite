if(NOT ROOTGED_FOUND)
	mark_as_advanced(ROOTGED_FOUND)
	set(ROOTGED_FOUND TRUE)
	cms_find_package(rootgui)
	list(APPEND LIBS Ged)
endif()

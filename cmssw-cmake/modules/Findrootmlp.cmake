if(NOT ROOTMLP_FOUND)
	mark_as_advanced(ROOTMLP_FOUND)
	set(ROOTMLP_FOUND TRUE)
	cms_find_package(rootgraphics)
	list(APPEND LIBS MLP)
endif()

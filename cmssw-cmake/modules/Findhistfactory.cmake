if(NOT HISTFACTORY_FOUND)
	mark_as_advanced(HISTFACTORY_FOUND)
	set(HISTFACTORY_FOUND TRUE)
	cms_find_package(roofitcore)
	cms_find_package(roofit)
	cms_find_package(roostats)
	cms_find_package(rootcore)
	cms_find_package(roothistmatrix)
	cms_find_package(rootgpad)
	cms_find_package(rootxml)
	cms_find_package(rootfoam)
	list(APPEND LIBS HistFactory)
endif()

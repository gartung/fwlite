if(NOT FWCoreParameterSet_FOUND)
  set(FWCoreParameterSet_FOUND TRUE)
  mark_as_advanced(FWCoreParameterSet_FOUND)
cms_find_package(FWCoreUtilities)
cms_find_package(FWCorePluginManager)
cms_find_package(FWCoreMessageLogger)
cms_find_package(DataFormatsProvenance)
cms_find_package(tbb)
cms_find_package(boost)
cms_find_package(boost_filesystem)
list(APPEND LIBS FWCoreParameterSet)
endif()

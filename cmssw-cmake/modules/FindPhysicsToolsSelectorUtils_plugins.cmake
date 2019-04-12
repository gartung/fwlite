if(NOT PhysicsToolsSelectorUtils_plugins_FOUND)
  set(PhysicsToolsSelectorUtils_plugins_FOUND TRUE)
  mark_as_advanced(PhysicsToolsSelectorUtils_plugins_FOUND)
cms_find_package(FWCoreUtilities)
cms_find_package(FWCoreParameterSet)
cms_find_package(FWCoreMessageLogger)
cms_find_package(FWCoreFramework)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsTauReco)
cms_find_package(DataFormatsCandidate)
cms_find_package(CommonToolsUtils)
cms_find_package(PhysicsToolsSelectorUtils)
list(APPEND LIBS PhysicsToolsSelectorUtils_plugins)
endif()

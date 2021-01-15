if(NOT FireworksCore_FOUND)
  set(FireworksCore_FOUND TRUE)
  mark_as_advanced(FireworksCore_FOUND)
cms_find_package(FWCoreReflection)
cms_find_package(FWCoreParameterSet)
cms_find_package(DataFormatsTrackerCommon)
cms_find_package(DataFormatsProvenance)
cms_find_package(DataFormatsBeamSpot)
cms_find_package(FireworksTableWidget)
cms_find_package(CalibTrackerStandaloneTrackerTopology)
cms_find_package(FWCoreUtilities)
cms_find_package(FWCorePluginManager)
cms_find_package(FWCoreFWLite)
cms_find_package(FWCoreCommon)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsScalers)
cms_find_package(DataFormatsMuonDetId)
cms_find_package(DataFormatsMath)
cms_find_package(DataFormatsL1GlobalTrigger)
cms_find_package(DataFormatsFWLite)
cms_find_package(DataFormatsDetId)
cms_find_package(DataFormatsCommon)
cms_find_package(DataFormatsCandidate)
cms_find_package(CommonToolsUtils)
cms_find_package(boost)
cms_find_package(boost_program_options)
cms_find_package(boost_regex)
cms_find_package(boost_system)
cms_find_package(opengl)
cms_find_package(rootinteractive)
cms_find_package(rootgraphics)
cms_find_package(sigcpp)
cms_find_package(rootged)
cms_find_package(rootthread)
cms_find_package(rooteve)
cms_find_package(rootgeom)
cms_find_package(rootgeompainter)
cms_find_package(rootguihtml)
cms_find_package(rootx11)
cms_find_package(rootrgl)
cms_find_package(rootglew)
cms_find_package(rootgui)
list(APPEND LIBS FireworksCore)
endif()

if(NOT FireworksCore_FOUND)
  set(FireworksCore_FOUND TRUE)
  mark_as_advanced(FireworksCore_FOUND)
cms_find_package(FireworksTableWidget)
cms_find_package(CalibTrackerStandaloneTrackerTopology)
cms_find_package(FWCoreUtilities)
cms_find_package(FWCorePluginManager)
cms_find_package(FWCoreFWLite)
cms_find_package(FWCoreCommon)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsScalers)
cms_find_package(DataFormatsSiPixelDetId)
cms_find_package(DataFormatsMuonDetId)
cms_find_package(DataFormatsMath)
cms_find_package(DataFormatsL1GlobalTrigger)
cms_find_package(DataFormatsFWLite)
cms_find_package(DataFormatsEcalRecHit)
cms_find_package(DataFormatsEcalDetId)
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
cms_find_package(Thread)
cms_find_package(Eve)
cms_find_package(Geom)
cms_find_package(GeomPainter)
cms_find_package(GuiHtml)
cms_find_package(GX11)
cms_find_package(RGL)
cms_find_package(GLEW)
cms_find_package(Gui)
list(APPEND LIBS FireworksCore)
endif()

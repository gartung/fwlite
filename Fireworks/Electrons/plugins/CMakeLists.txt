add_library(FireworksElectronsPlugins SHARED ${FireworksElectronsPlugins_EXTRA_SOURCES}
  FWConvTrackHitsDetailView.cc
  FWConversionProxyBuilder.cc
  FWElectronDetailView.cc
  FWElectronLegoProxyBuilder.cc
  FWElectronProxyBuilder.cc
  FWPhotonDetailView.cc
  FWPhotonLegoProxyBuilder.cc
  FWPhotonProxyBuilder.cc
)

set_target_properties(FireworksElectronsPlugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksElectronsPlugins)

set_target_properties(FireworksElectronsPlugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS FireworksElectronsPlugins)

edm_write_config( FireworksElectronsPlugins Fireworks/Electrons)

target_include_directories(FireworksElectronsPlugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksElectronsPlugins PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${OPENGL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(FireworksElectronsPlugins PUBLIC
DataFormatsEgammaCandidates
DataFormatsEgammaReco
DataFormatsGsfTrackReco
FireworksCalo
FireworksCandidates
FireworksCore
FireworksElectrons
FireworksTracks
ROOT::Core
ROOT::Eve
ROOT::Geom
ROOT::GeomPainter
ROOT::Gpad
ROOT::Graf
ROOT::Graf3d
ROOT::Gui
ROOT::Hist
ROOT::MathCore
ROOT::Matrix
ROOT::Net
ROOT::Physics
ROOT::Postscript
ROOT::RGL
ROOT::RIO
ROOT::Rint
ROOT::Thread
ROOT::Tree
ROOT::TreePlayer
)


add_python_rules(Fireworks/Electrons/plugins/)

add_script_rules(Fireworks/Electrons/plugins/)

install( TARGETS FireworksElectronsPlugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


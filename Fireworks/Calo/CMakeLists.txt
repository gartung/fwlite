add_subdirectory(plugins)

add_library(FireworksCalo SHARED ${FireworksCalo_EXTRA_SOURCES}
  src/FWBoxRecHit.cc
  src/FWCaloDataHistProxyBuilder.cc
  src/FWCaloDataProxyBuilderBase.cc
  src/FWECALCaloDataDetailViewBuilder.cc
  src/FWECALDetailViewBuilder.cc
  src/FWFromSliceSelector.cc
  src/FWFromTEveCaloDataSelector.cc
  src/FWHistSliceSelector.cc
  src/FWTauProxyBuilderBase.cc
  src/makeEveJetCone.cc
  src/thetaBins.cc
)

set_target_properties(FireworksCalo PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksCalo)

target_include_directories(FireworksCalo PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksCalo PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
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

target_link_libraries(FireworksCalo PUBLIC
Boost::system
DataFormatsCaloRecHit
DataFormatsCaloTowers
DataFormatsDetId
DataFormatsEcalDetId
DataFormatsEcalRecHit
DataFormatsEgammaReco
DataFormatsFWLite
DataFormatsJetReco
DataFormatsTauReco
FireworksCore
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


add_python_rules(Fireworks/Calo)

add_script_rules(Fireworks/Calo)

install( TARGETS FireworksCalo DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


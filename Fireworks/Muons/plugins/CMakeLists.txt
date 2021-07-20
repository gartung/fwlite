add_library(FireworksMuonsPlugins SHARED ${FireworksMuonsPlugins_EXTRA_SOURCES}
  FWCSCRecHitProxyBuilder.cc
  FWCSCSegmentProxyBuilder.cc
  FWCSCStripDigiProxyBuilder.cc
  FWCSCWireDigiProxyBuilder.cc
  FWDTDigiProxyBuilder.cc
  FWDTRecHitProxyBuilder.cc
  FWDTSegmentProxyBuilder.cc
  FWGEMDigiProxyBuilder.cc
  FWGEMRecHitProxyBuilder.cc
  FWGEMSegmentProxyBuilder.cc
  FWItemMuonAccessors.cc
  FWME0DigiProxyBuilder.cc
  FWME0RecHitProxyBuilder.cc
  FWME0SegmentProxyBuilder.cc
  FWMuonDetailView.cc
  FWMuonGlimpseProxyBuilder.cc
  FWMuonLegoProxyBuilder.cc
  FWMuonProxyBuilder.cc
  FWMuonRhoPhiProxyBuilder.cc
  FWRPCDigiProxyBuilder.cc
  FWRPCRecHitProxyBuilder.cc
)

set_target_properties(FireworksMuonsPlugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksMuonsPlugins)

set_target_properties(FireworksMuonsPlugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS FireworksMuonsPlugins)

edm_write_config( FireworksMuonsPlugins Fireworks/Muons)

target_include_directories(FireworksMuonsPlugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksMuonsPlugins PUBLIC
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
${SIGCPP_INCLUDE_DIR}
${SIGCPP_LIB_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(FireworksMuonsPlugins PUBLIC
DataFormatsCSCDigi
DataFormatsCSCRecHit
DataFormatsDTDigi
DataFormatsDTRecHit
DataFormatsGEMDigi
DataFormatsGEMRecHit
DataFormatsMuonDetId
DataFormatsMuonReco
DataFormatsRPCDigi
DataFormatsRPCRecHit
DataFormatsTrackReco
FireworksCalo
FireworksCandidates
FireworksCore
FireworksMuons
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
ROOT::Postscript
ROOT::RGL
ROOT::RIO
ROOT::Rint
ROOT::Thread
ROOT::Tree
ROOT::TreePlayer
)


add_python_rules(Fireworks/Muons/plugins/)

add_script_rules(Fireworks/Muons/plugins/)

install( TARGETS FireworksMuonsPlugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


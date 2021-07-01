add_library(FireworksCaloPlugins SHARED ${FireworksCaloPlugins_EXTRA_SOURCES}
  FWCaloClusterProxyBuilder.cc
  FWCaloRecHitDigitSetProxyBuilder.cc
  FWCaloTowerDetailView.cc
  FWCaloTowerProxyBuilder.cc
  FWCaloTowerSliceSelector.cc
  FWCastorRecHitProxyBuilder.cc
  FWEcalRecHitProxyBuilder.cc
  FWFTLRecHitProxyBuilder.cc
  FWHBHERecHitProxyBuilder.cc
  FWHFRecHitProxyBuilder.cc
  FWHFTowerProxyBuilder.cc
  FWHFTowerSliceSelector.cc
  FWHGCRecHitProxyBuilder.cc
  FWHGCalMultiClusterLegoProxyBuilder.cc
  FWHGCalMultiClusterProxyBuilder.cc
  FWHGCalMultiClusterSliceSelector.cc
  FWHGCalTriggerCellProxyBuilder.cc
  FWHGCalTriggerClusterProxyBuilder.cc
  FWHGTowerProxyBuilder.cc
  FWHGTowerSliceSelector.cc
  FWHORecHitProxyBuilder.cc
  FWItemTriggerCellAccessors.cc
  FWJetLegoProxyBuilder.cc
  FWJetProxyBuilder.cc
  FWL1EmParticleProxyBuilder.cc
  FWL1EtMissParticleGlimpseProxyBuilder.cc
  FWL1EtMissParticleLegoProxyBuilder.cc
  FWL1EtMissParticleProxyBuilder.cc
  FWL1JetParticleLegoProxyBuilder.cc
  FWL1JetParticleProxyBuilder.cc
  FWL1MuonParticleLegoProxyBuilder.cc
  FWL1MuonParticleProxyBuilder.cc
  FWL1THGCalProxyTemplate.cc
  FWMET3DProxyBuilder.cc
  FWMETGlimpseProxyBuilder.cc
  FWMETLegoProxyBuilder.cc
  FWMETProxyBuilder.cc
  FWPFTauProxyBuilder.cc
  FWPRCaloTowerProxyBuilder.cc
  FWTracksterHitsProxyBuilder.cc
  FWTracksterLayersProxyBuilder.cc
  FWTracksterProxyBuilder.cc
  FWZDCRecHitProxyBuilder.cc
)

set_target_properties(FireworksCaloPlugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksCaloPlugins)

set_target_properties(FireworksCaloPlugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS FireworksCaloPlugins)

edm_write_config( FireworksCaloPlugins Fireworks/Calo)

target_include_directories(FireworksCaloPlugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksCaloPlugins PUBLIC
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

target_link_libraries(FireworksCaloPlugins PUBLIC
DataFormatsCaloRecHit
DataFormatsCaloTowers
DataFormatsEcalDetId
DataFormatsEcalRecHit
DataFormatsHcalRecHit
DataFormatsJetReco
DataFormatsL1THGCal
DataFormatsL1Trigger
DataFormatsMETReco
DataFormatsTauReco
DataFormatsTrackReco
FireworksCalo
FireworksCore
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


add_python_rules(Fireworks/Calo/plugins/)

add_script_rules(Fireworks/Calo/plugins/)

install( TARGETS FireworksCaloPlugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


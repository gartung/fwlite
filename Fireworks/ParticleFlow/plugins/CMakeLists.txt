add_library(FireworksParticleFlowPlugins SHARED ${FireworksParticleFlowPlugins_EXTRA_SOURCES}
  FWPFBlockProxyBuilder.cc
  FWPFCandidate3DProxyBuilder.cc
  FWPFCandidateDetailView.cc
  FWPFCandidateTowerProxyBuilder.cc
  FWPFCandidateTowerSliceSelector.cc
  FWPFCandidateWithHitsProxyBuilder.cc
  FWPFCandidatesLegoProxyBuilder.cc
  FWPFClusterLegoProxyBuilder.cc
  FWPFClusterRPZProxyBuilder.cc
  FWPFEcalRecHitLegoProxyBuilder.cc
  FWPFEcalRecHitRPProxyBuilder.cc
  FWPFPatJet3DProxyBuilder.cc
  FWPFPatJetLegoProxyBuilder.cc
  FWPFTrack3DProxyBuilder.cc
  FWPFTrackLegoProxyBuilder.cc
  FWPFTrackRPZProxyBuilder.cc
)

set_target_properties(FireworksParticleFlowPlugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksParticleFlowPlugins)

set_target_properties(FireworksParticleFlowPlugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS FireworksParticleFlowPlugins)

edm_write_config( FireworksParticleFlowPlugins Fireworks/ParticleFlow)

target_include_directories(FireworksParticleFlowPlugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksParticleFlowPlugins PUBLIC
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

target_link_libraries(FireworksParticleFlowPlugins PUBLIC
DataFormatsEcalRecHit
DataFormatsJetReco
DataFormatsParticleFlowCandidate
DataFormatsParticleFlowReco
DataFormatsPatCandidates
DataFormatsTrackReco
FireworksCandidates
FireworksParticleFlow
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


add_python_rules(Fireworks/ParticleFlow/plugins/)

add_script_rules(Fireworks/ParticleFlow/plugins/)

install( TARGETS FireworksParticleFlowPlugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


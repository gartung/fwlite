add_library(FireworksSimDataPlugins SHARED ${FireworksSimDataPlugins_EXTRA_SOURCES}
  FWCaloParticleProxyBuilder.cc
  FWECaloParticleProxyBuilder.cc
  FWPCaloHitProxyBuilder.cc
  FWPSimHitProxyBuilder.cc
  FWSimTrackProxyBuilder.cc
  FWSimVertexProxyBuilder.cc
  FWTrackingParticleProxyBuilder.cc
  FWTrackingVertexProxyBuilder.cc
)

set_target_properties(FireworksSimDataPlugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksSimDataPlugins)

set_target_properties(FireworksSimDataPlugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS FireworksSimDataPlugins)

edm_write_config( FireworksSimDataPlugins Fireworks/SimData)

target_include_directories(FireworksSimDataPlugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksSimDataPlugins PUBLIC
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

target_link_libraries(FireworksSimDataPlugins PUBLIC
FireworksCore
ROOT::Core
ROOT::EG
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
SimDataFormatsCaloAnalysis
SimDataFormatsCaloHit
SimDataFormatsTrack
SimDataFormatsTrackingAnalysis
SimDataFormatsTrackingHit
SimDataFormatsVertex
)


add_python_rules(Fireworks/SimData/plugins/)

add_script_rules(Fireworks/SimData/plugins/)

install( TARGETS FireworksSimDataPlugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


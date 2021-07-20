add_library(FireworksGenParticlePlugins SHARED ${FireworksGenParticlePlugins_EXTRA_SOURCES}
  FWGenParticleLegoProxyBuilder.cc
  FWGenParticleProxyBuilder.cc
)

set_target_properties(FireworksGenParticlePlugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksGenParticlePlugins)

set_target_properties(FireworksGenParticlePlugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS FireworksGenParticlePlugins)

edm_write_config( FireworksGenParticlePlugins Fireworks/GenParticle)

target_include_directories(FireworksGenParticlePlugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksGenParticlePlugins PUBLIC
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

target_link_libraries(FireworksGenParticlePlugins PUBLIC
DataFormatsHepMCCandidate
FireworksCandidates
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
)


add_python_rules(Fireworks/GenParticle/plugins/)

add_script_rules(Fireworks/GenParticle/plugins/)

install( TARGETS FireworksGenParticlePlugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


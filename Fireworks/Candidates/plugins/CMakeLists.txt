add_library(FireworksCandidatesPlugins SHARED ${FireworksCandidatesPlugins_EXTRA_SOURCES}
  FWCandidateECALDetailView.cc
  FWCandidateHGCalLegoProxyBuilder.cc
  FWCandidateLegoProxyBuilder.cc
  FWCandidateProxyBuilder.cc
  FWCandidatePtrProxyBuilder.cc
  FWCandidateTowerProxyBuilder.cc
)

set_target_properties(FireworksCandidatesPlugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksCandidatesPlugins)

set_target_properties(FireworksCandidatesPlugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS FireworksCandidatesPlugins)

edm_write_config( FireworksCandidatesPlugins Fireworks/Candidates)

target_include_directories(FireworksCandidatesPlugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksCandidatesPlugins PUBLIC
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

target_link_libraries(FireworksCandidatesPlugins PUBLIC
DataFormatsCandidate
FireworksCandidates
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


add_python_rules(Fireworks/Candidates/plugins/)

add_script_rules(Fireworks/Candidates/plugins/)

install( TARGETS FireworksCandidatesPlugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


add_subdirectory(plugins)

add_library(FireworksTracks SHARED ${FireworksTracks_EXTRA_SOURCES}
  src/TrackUtils.cc
  src/estimate_field.cc
)

set_target_properties(FireworksTracks PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksTracks)

target_include_directories(FireworksTracks PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksTracks PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${OPENGL_INCLUDE_DIR}
${SIGCPP_INCLUDE_DIR}
${SIGCPP_LIB_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
/usr/include
)

target_link_libraries(FireworksTracks PUBLIC
DataFormatsCaloTowers
DataFormatsEcalDetId
DataFormatsGsfTrackReco
DataFormatsHcalDetId
DataFormatsMuonDetId
DataFormatsSiPixelCluster
DataFormatsSiPixelDetId
DataFormatsSiStripDetId
DataFormatsTrackReco
DataFormatsTrackerRecHit2D
DataFormatsTrackingRecHit
FireworksCore
ROOT::Core
ROOT::Eve
ROOT::GenVector
ROOT::Geom
ROOT::GeomPainter
ROOT::Gpad
ROOT::Graf
ROOT::Graf3d
ROOT::Gui
ROOT::Hist
ROOT::MathCore
ROOT::MathMore
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
${GSL_LIBRARY}
)


add_python_rules(Fireworks/Tracks)

add_script_rules(Fireworks/Tracks)

install( TARGETS FireworksTracks DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


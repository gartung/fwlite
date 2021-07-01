add_library(FireworksTracksPlugins SHARED ${FireworksTracksPlugins_EXTRA_SOURCES}
  FWBeamSpotOnlineProxyBuilder.cc
  FWBeamSpotProxyBuilder.cc
  FWItemTrackAccessors.cc
  FWPhase2TrackerCluster1DDetProxyBuilder.cc
  FWPhase2TrackerCluster1DProxyBuilder.cc
  FWSiPixelClusterDetProxyBuilder.cc
  FWSiPixelClusterProxyBuilder.cc
  FWSiPixelDigiProxyBuilder.cc
  FWSiStripClusterProxyBuilder.cc
  FWSiStripDigiProxyBuilder.cc
  FWTrackECALDetailView.cc
  FWTrackHitsDetailView.cc
  FWTrackProxyBuilder.cc
  FWTrackResidualDetailView.cc
  FWTrackTrackingRecHitProxyBuilder.cc
  FWTracksModulesProxyBuilder.cc
  FWTracksRecHitsProxyBuilder.cc
  FWTrajectorySeedProxyBuilder.cc
)

set_target_properties(FireworksTracksPlugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksTracksPlugins)

set_target_properties(FireworksTracksPlugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS FireworksTracksPlugins)

edm_write_config( FireworksTracksPlugins Fireworks/Tracks)

target_include_directories(FireworksTracksPlugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksTracksPlugins PUBLIC
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

target_link_libraries(FireworksTracksPlugins PUBLIC
DataFormatsBeamSpot
DataFormatsCommon
DataFormatsDetId
DataFormatsScalers
DataFormatsSiPixelCluster
DataFormatsSiPixelDigi
DataFormatsSiStripCluster
DataFormatsSiStripDigi
DataFormatsTrackReco
DataFormatsTrackingRecHit
FireworksCalo
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


add_python_rules(Fireworks/Tracks/plugins/)

add_script_rules(Fireworks/Tracks/plugins/)

install( TARGETS FireworksTracksPlugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


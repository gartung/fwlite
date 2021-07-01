include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsEgammaTrackReco src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsEgammaTrackReco)

add_library(DataFormatsEgammaTrackReco SHARED ${DataFormatsEgammaTrackReco_EXTRA_SOURCES}
  src/ConversionTrack.cc
)

set_target_properties(DataFormatsEgammaTrackReco PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsEgammaTrackReco)

target_include_directories(DataFormatsEgammaTrackReco PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsEgammaTrackReco PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
/usr/include
)

target_link_libraries(DataFormatsEgammaTrackReco PUBLIC
${CLHEP_LIBRARIES}
DataFormatsCLHEP
DataFormatsCaloRecHit
DataFormatsCommon
DataFormatsEgammaReco
DataFormatsMath
DataFormatsTrackCandidate
DataFormatsTrackReco
DataFormatsTrackingRecHit
ROOT::Core
ROOT::GenVector
ROOT::MathCore
ROOT::MathMore
ROOT::Net
ROOT::RIO
ROOT::Thread
ROOT::Tree
gsl
)


add_python_rules(DataFormats/EgammaTrackReco)

add_script_rules(DataFormats/EgammaTrackReco)

install( TARGETS DataFormatsEgammaTrackReco DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


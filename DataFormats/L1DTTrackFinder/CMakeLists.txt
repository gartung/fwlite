#target.symbol DataFormatsL1DTTrackFinder
include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsL1DTTrackFinder src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsL1DTTrackFinder)

add_library(DataFormatsL1DTTrackFinder SHARED ${DataFormatsL1DTTrackFinder_EXTRA_SOURCES}
  src/L1MuDTChambPhContainer.cc
  src/L1MuDTChambPhDigi.cc
  src/L1MuDTChambThContainer.cc
  src/L1MuDTChambThDigi.cc
  src/L1MuDTTrackCand.cc
  src/L1MuDTTrackContainer.cc
  src/L1Phase2MuDTExtPhContainer.cc
  src/L1Phase2MuDTExtPhDigi.cc
  src/L1Phase2MuDTExtThContainer.cc
  src/L1Phase2MuDTExtThDigi.cc
  src/L1Phase2MuDTPhContainer.cc
  src/L1Phase2MuDTPhDigi.cc
  src/L1Phase2MuDTThContainer.cc
  src/L1Phase2MuDTThDigi.cc
)

set_target_properties(DataFormatsL1DTTrackFinder PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsL1DTTrackFinder)

target_include_directories(DataFormatsL1DTTrackFinder PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsL1DTTrackFinder PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

target_link_libraries(DataFormatsL1DTTrackFinder PUBLIC
DataFormatsCommon
DataFormatsDetId
DataFormatsForwardDetId
DataFormatsGeometryVector
DataFormatsHcalDetId
DataFormatsL1Trigger
FWCoreMessageLogger
FWCoreUtilities
ROOT::Core
Threads::Threads
)


add_python_rules(DataFormats/L1THGCal)

add_script_rules(DataFormats/L1THGCal)

install( TARGETS DataFormatsL1DTTrackFinder DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


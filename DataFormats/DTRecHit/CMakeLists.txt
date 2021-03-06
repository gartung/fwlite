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

cms_rootdict(DataFormatsDTRecHit src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsDTRecHit)

add_library(DataFormatsDTRecHit SHARED ${DataFormatsDTRecHit_EXTRA_SOURCES}
  src/DTChamberRecSegment2D.cc
  src/DTEnums.cc
  src/DTRangeMapAccessor.cc
  src/DTRecHit1D.cc
  src/DTRecHit1DPair.cc
  src/DTRecSegment2D.cc
  src/DTRecSegment4D.cc
  src/DTSLRecCluster.cc
  src/DTSLRecSegment2D.cc
)

set_target_properties(DataFormatsDTRecHit PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsDTRecHit)

target_include_directories(DataFormatsDTRecHit PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsDTRecHit PUBLIC
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

target_link_libraries(DataFormatsDTRecHit PUBLIC
DataFormatsCommon
DataFormatsDTDigi
DataFormatsGeometrySurface
DataFormatsGeometryVector
DataFormatsMuonDetId
DataFormatsTrackingRecHit
FWCoreUtilities
)


add_python_rules(DataFormats/DTRecHit)

add_script_rules(DataFormats/DTRecHit)

install( TARGETS DataFormatsDTRecHit DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


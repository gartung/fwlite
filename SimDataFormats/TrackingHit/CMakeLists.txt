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

cms_rootdict(SimDataFormatsTrackingHit src/classes.h src/classes_def.xml)

add_rootdict_rules(SimDataFormatsTrackingHit)

add_library(SimDataFormatsTrackingHit SHARED ${SimDataFormatsTrackingHit_EXTRA_SOURCES}
  src/PSimHit.cc
)

set_target_properties(SimDataFormatsTrackingHit PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS SimDataFormatsTrackingHit)

target_include_directories(SimDataFormatsTrackingHit PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(SimDataFormatsTrackingHit PUBLIC
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

target_link_libraries(SimDataFormatsTrackingHit PUBLIC
DataFormatsCommon
DataFormatsGeometryVector
SimDataFormatsEncodedEventId
)


add_python_rules(SimDataFormats/TrackingHit)

add_script_rules(SimDataFormats/TrackingHit)

install( TARGETS SimDataFormatsTrackingHit DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


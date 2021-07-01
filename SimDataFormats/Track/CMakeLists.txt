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

cms_rootdict(SimDataFormatsTrack src/classes.h src/classes_def.xml)

add_rootdict_rules(SimDataFormatsTrack)

add_library(SimDataFormatsTrack SHARED ${SimDataFormatsTrack_EXTRA_SOURCES}
  src/CoreSimTrack.cc
  src/SimTrack.cc
)

set_target_properties(SimDataFormatsTrack PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS SimDataFormatsTrack)

target_include_directories(SimDataFormatsTrack PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(SimDataFormatsTrack PUBLIC
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

target_link_libraries(SimDataFormatsTrack PUBLIC
DataFormatsCommon
DataFormatsMath
FWCoreUtilities
SimDataFormatsEncodedEventId
)


add_python_rules(SimDataFormats/Track)

add_script_rules(SimDataFormats/Track)

install( TARGETS SimDataFormatsTrack DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


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

cms_rootdict(FastSimDataFormatsExternal src/classes.h src/classes_def.xml)

add_rootdict_rules(FastSimDataFormatsExternal)

add_library(FastSimDataFormatsExternal SHARED ${FastSimDataFormatsExternal_EXTRA_SOURCES}
  src/FastL1BitInfo.cc
  src/FastTrackerCluster.cc
)

set_target_properties(FastSimDataFormatsExternal PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FastSimDataFormatsExternal)

target_include_directories(FastSimDataFormatsExternal PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FastSimDataFormatsExternal PUBLIC
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

target_link_libraries(FastSimDataFormatsExternal PUBLIC
DataFormatsCommon
DataFormatsDetId
DataFormatsGeometrySurface
DataFormatsGeometryVector
)


add_python_rules(FastSimDataFormats/External)

add_script_rules(FastSimDataFormats/External)

install( TARGETS FastSimDataFormatsExternal DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


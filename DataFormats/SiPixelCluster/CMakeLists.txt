include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${FMT_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsSiPixelCluster src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsSiPixelCluster)

add_library(DataFormatsSiPixelCluster SHARED ${DataFormatsSiPixelCluster_EXTRA_SOURCES}
  src/SiPixelCluster.cc
  src/SiPixelClusterShapeCache.cc
)

set_target_properties(DataFormatsSiPixelCluster PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsSiPixelCluster)

target_include_directories(DataFormatsSiPixelCluster PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsSiPixelCluster PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${FMT_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

target_link_libraries(DataFormatsSiPixelCluster PUBLIC
DataFormatsCommon
DataFormatsProvenance
FWCoreUtilities
)


add_python_rules(DataFormats/SiPixelCluster)

add_script_rules(DataFormats/SiPixelCluster)

install( TARGETS DataFormatsSiPixelCluster DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


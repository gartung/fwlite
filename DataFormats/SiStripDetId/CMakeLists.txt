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

cms_rootdict(DataFormatsSiStripDetId src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsSiStripDetId)

add_library(DataFormatsSiStripDetId SHARED ${DataFormatsSiStripDetId_EXTRA_SOURCES}
  src/SiStripDetId.cc
)

set_target_properties(DataFormatsSiStripDetId PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsSiStripDetId)

target_include_directories(DataFormatsSiStripDetId PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsSiStripDetId PUBLIC
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

target_link_libraries(DataFormatsSiStripDetId PUBLIC
DataFormatsDetId
)


add_python_rules(DataFormats/SiStripDetId)

add_script_rules(DataFormats/SiStripDetId)

install( TARGETS DataFormatsSiStripDetId DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${FMT_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsSiPixelDigi src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsSiPixelDigi)

add_library(DataFormatsSiPixelDigi SHARED ${DataFormatsSiPixelDigi_EXTRA_SOURCES}
  src/PixelDigiCollection.cc
  src/SiPixelCalibDigi.cc
  src/SiPixelCalibDigiError.cc
)

set_target_properties(DataFormatsSiPixelDigi PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsSiPixelDigi)

target_include_directories(DataFormatsSiPixelDigi PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsSiPixelDigi PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${FMT_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

target_link_libraries(DataFormatsSiPixelDigi PUBLIC
DataFormatsCommon
DataFormatsSiPixelDetId
)


add_python_rules(DataFormats/SiPixelDigi)

add_script_rules(DataFormats/SiPixelDigi)

install( TARGETS DataFormatsSiPixelDigi DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


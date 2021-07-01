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

cms_rootdict(DataFormatsDTDigi src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsDTDigi)

add_library(DataFormatsDTDigi SHARED ${DataFormatsDTDigi_EXTRA_SOURCES}
  src/DTDigi.cc
  src/DTLocalTrigger.cc
)

set_target_properties(DataFormatsDTDigi PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsDTDigi)

target_include_directories(DataFormatsDTDigi PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsDTDigi PUBLIC
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

target_link_libraries(DataFormatsDTDigi PUBLIC
DataFormatsCommon
DataFormatsFEDRawData
DataFormatsMuonDetId
FWCoreUtilities
)


add_python_rules(DataFormats/DTDigi)

add_script_rules(DataFormats/DTDigi)

install( TARGETS DataFormatsDTDigi DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


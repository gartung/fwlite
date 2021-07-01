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

cms_rootdict(SimDataFormatsDigiSimLinks src/classes.h src/classes_def.xml)

add_rootdict_rules(SimDataFormatsDigiSimLinks)

add_library(SimDataFormatsDigiSimLinks SHARED ${SimDataFormatsDigiSimLinks_EXTRA_SOURCES}
  src/DTDigiSimLink.cc
)

set_target_properties(SimDataFormatsDigiSimLinks PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS SimDataFormatsDigiSimLinks)

target_include_directories(SimDataFormatsDigiSimLinks PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(SimDataFormatsDigiSimLinks PUBLIC
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

target_link_libraries(SimDataFormatsDigiSimLinks PUBLIC
DataFormatsCommon
DataFormatsMuonDetId
SimDataFormatsEncodedEventId
Threads::Threads
crypt
dl
nsl
rt
)


add_python_rules(SimDataFormats/DigiSimLinks)

add_script_rules(SimDataFormats/DigiSimLinks)

install( TARGETS SimDataFormatsDigiSimLinks DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


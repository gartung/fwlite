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

cms_rootdict(DataFormatsL1CaloTrigger src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsL1CaloTrigger)

add_library(DataFormatsL1CaloTrigger SHARED ${DataFormatsL1CaloTrigger_EXTRA_SOURCES}
  src/L1CaloEmCand.cc
  src/L1CaloMipQuietRegion.cc
  src/L1CaloRegion.cc
  src/L1CaloRegionDetId.cc
)

set_target_properties(DataFormatsL1CaloTrigger PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsL1CaloTrigger)

target_include_directories(DataFormatsL1CaloTrigger PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsL1CaloTrigger PUBLIC
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

target_link_libraries(DataFormatsL1CaloTrigger PUBLIC
DataFormatsCommon
DataFormatsDetId
)


add_python_rules(DataFormats/L1CaloTrigger)

add_script_rules(DataFormats/L1CaloTrigger)

install( TARGETS DataFormatsL1CaloTrigger DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


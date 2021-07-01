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

cms_rootdict(DataFormatsEcalDetId src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsEcalDetId)

add_library(DataFormatsEcalDetId SHARED ${DataFormatsEcalDetId_EXTRA_SOURCES}
  src/EBDetId.cc
  src/EEDetId.cc
  src/ESDetId.cc
  src/EcalElectronicsId.cc
  src/EcalPnDiodeDetId.cc
  src/EcalScDetId.cc
  src/EcalTrigTowerDetId.cc
  src/EcalTriggerElectronicsId.cc
)

set_target_properties(DataFormatsEcalDetId PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsEcalDetId)

target_include_directories(DataFormatsEcalDetId PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsEcalDetId PUBLIC
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

target_link_libraries(DataFormatsEcalDetId PUBLIC
DataFormatsCommon
DataFormatsDetId
FWCoreUtilities
)


add_python_rules(DataFormats/EcalDetId)

add_script_rules(DataFormats/EcalDetId)

install( TARGETS DataFormatsEcalDetId DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


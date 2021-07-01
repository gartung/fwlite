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

cms_rootdict(DataFormatsEcalDigi src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsEcalDigi)

add_library(DataFormatsEcalDigi SHARED ${DataFormatsEcalDigi_EXTRA_SOURCES}
  src/EBDataFrame.cc
  src/EBSrFlag.cc
  src/EEDataFrame.cc
  src/EESrFlag.cc
  src/ESDataFrame.cc
  src/ESSample.cc
  src/EcalDataFrame.cc
  src/EcalEBTriggerPrimitiveDigi.cc
  src/EcalEBTriggerPrimitiveSample.cc
  src/EcalFEMSample.cc
  src/EcalLiteDTUSample.cc
  src/EcalMGPASample.cc
  src/EcalMatacqDigi.cc
  src/EcalPnDiodeDigi.cc
  src/EcalPseudoStripInputDigi.cc
  src/EcalPseudoStripInputSample.cc
  src/EcalSrFlag.cc
  src/EcalTimeDigi.cc
  src/EcalTrigPrimCompactColl.cc
  src/EcalTriggerPrimitiveDigi.cc
  src/EcalTriggerPrimitiveSample.cc
)

set_target_properties(DataFormatsEcalDigi PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsEcalDigi)

target_include_directories(DataFormatsEcalDigi PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsEcalDigi PUBLIC
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

target_link_libraries(DataFormatsEcalDigi PUBLIC
DataFormatsCommon
DataFormatsDetId
DataFormatsEcalDetId
FWCoreMessageLogger
FWCoreUtilities
)


add_python_rules(DataFormats/EcalDigi)

add_script_rules(DataFormats/EcalDigi)

install( TARGETS DataFormatsEcalDigi DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


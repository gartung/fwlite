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

cms_rootdict(DataFormatsHcalDigi src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsHcalDigi)

add_library(DataFormatsHcalDigi SHARED ${DataFormatsHcalDigi_EXTRA_SOURCES}
  src/CastorDataFrame.cc
  src/CastorTriggerPrimitiveDigi.cc
  src/HBHEDataFrame.cc
  src/HFDataFrame.cc
  src/HODataFrame.cc
  src/HOTriggerPrimitiveDigi.cc
  src/HcalCalibDataFrame.cc
  src/HcalHistogramDigi.cc
  src/HcalLaserDigi.cc
  src/HcalQIESample.cc
  src/HcalTTPDigi.cc
  src/HcalTriggerPrimitiveDigi.cc
  src/HcalTriggerPrimitiveSample.cc
  src/HcalUMNioDigi.cc
  src/HcalUnpackerReport.cc
  src/QIE10DataFrame.cc
  src/QIE11DataFrame.cc
  src/ZDCDataFrame.cc
)

set_target_properties(DataFormatsHcalDigi PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsHcalDigi)

target_include_directories(DataFormatsHcalDigi PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsHcalDigi PUBLIC
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

target_link_libraries(DataFormatsHcalDigi PUBLIC
DataFormatsCommon
DataFormatsDetId
DataFormatsHcalDetId
)


add_python_rules(DataFormats/HcalDigi)

add_script_rules(DataFormats/HcalDigi)

install( TARGETS DataFormatsHcalDigi DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


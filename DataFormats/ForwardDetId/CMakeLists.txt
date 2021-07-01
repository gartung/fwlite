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

cms_rootdict(DataFormatsForwardDetId src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsForwardDetId)

add_library(DataFormatsForwardDetId SHARED ${DataFormatsForwardDetId_EXTRA_SOURCES}
  src/BTLDetId.cc
  src/ETLDetId.cc
  src/FastTimeDetId.cc
  src/HFNoseDetId.cc
  src/HFNoseDetIdToModule.cc
  src/HFNoseTriggerDetId.cc
  src/HGCEEDetId.cc
  src/HGCHEDetId.cc
  src/HGCScintillatorDetId.cc
  src/HGCSiliconDetId.cc
  src/HGCSiliconDetIdToModule.cc
  src/HGCSiliconDetIdToROC.cc
  src/HGCTriggerDetId.cc
  src/HGCalDetId.cc
  src/HGCalTriggerDetId.cc
  src/MTDDetId.cc
)

set_target_properties(DataFormatsForwardDetId PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsForwardDetId)

target_include_directories(DataFormatsForwardDetId PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsForwardDetId PUBLIC
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

target_link_libraries(DataFormatsForwardDetId PUBLIC
DataFormatsDetId
FWCoreUtilities
)


add_python_rules(DataFormats/ForwardDetId)

add_script_rules(DataFormats/ForwardDetId)

install( TARGETS DataFormatsForwardDetId DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


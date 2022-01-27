include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsL1THGCal src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsL1THGCal)

add_library(DataFormatsL1THGCal SHARED ${DataFormatsL1THGCal_EXTRA_SOURCES}
  src/ClusterShapes.cc
  src/HGCFETriggerDigi.cc
  src/HGCalCluster.cc
  src/HGCalConcentratorData.cc
  src/HGCalMulticluster.cc
  src/HGCalTower.cc
  src/HGCalTowerMap.cc
  src/HGCalTriggerCell.cc
  src/HGCalTriggerSums.cc
)

set_target_properties(DataFormatsL1THGCal PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsL1THGCal)

target_include_directories(DataFormatsL1THGCal PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsL1THGCal PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

target_link_libraries(DataFormatsL1THGCal PUBLIC
DataFormatsCommon
DataFormatsDetId
DataFormatsForwardDetId
DataFormatsGeometryVector
DataFormatsHcalDetId
DataFormatsL1Trigger
FWCoreMessageLogger
FWCoreUtilities
ROOT::Core
Threads::Threads
)


add_python_rules(DataFormats/L1THGCal)

add_script_rules(DataFormats/L1THGCal)

install( TARGETS DataFormatsL1THGCal DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


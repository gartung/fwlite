add_library(GeometryGEMGeometry SHARED ${GeometryGEMGeometry_EXTRA_SOURCES}
  src/ES_GEMGeometry.cc
  src/ES_ME0Geometry.cc
  src/GEMChamber.cc
  src/GEMEtaPartition.cc
  src/GEMEtaPartitionSpecs.cc
  src/GEMGeometry.cc
  src/GEMRegion.cc
  src/GEMRing.cc
  src/GEMStation.cc
  src/GEMSuperChamber.cc
  src/ME0Chamber.cc
  src/ME0EtaPartition.cc
  src/ME0EtaPartitionSpecs.cc
  src/ME0Geometry.cc
  src/ME0Layer.cc
)

set_target_properties(GeometryGEMGeometry PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS GeometryGEMGeometry)

target_include_directories(GeometryGEMGeometry PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(GeometryGEMGeometry PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
/usr/include
)

target_link_libraries(GeometryGEMGeometry PUBLIC
DataFormatsMuonDetId
GeometryCommonTopologies
)


add_python_rules(Geometry/GEMGeometry)

add_script_rules(Geometry/GEMGeometry)

install( TARGETS GeometryGEMGeometry DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsRPCRecHit src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsRPCRecHit)

add_library(DataFormatsRPCRecHit SHARED ${DataFormatsRPCRecHit_EXTRA_SOURCES}
  src/RPCRecHit.cc
)

set_target_properties(DataFormatsRPCRecHit PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsRPCRecHit)

target_include_directories(DataFormatsRPCRecHit PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsRPCRecHit PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
/usr/include
)

target_link_libraries(DataFormatsRPCRecHit PUBLIC
DataFormatsCommon
DataFormatsMuonDetId
DataFormatsTrackingRecHit
)


add_python_rules(DataFormats/RPCRecHit)

add_script_rules(DataFormats/RPCRecHit)

install( TARGETS DataFormatsRPCRecHit DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


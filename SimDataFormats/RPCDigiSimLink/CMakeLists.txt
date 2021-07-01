include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

cms_rootdict(SimDataFormatsRPCDigiSimLink src/classes.h src/classes_def.xml)

add_rootdict_rules(SimDataFormatsRPCDigiSimLink)

add_library(SimDataFormatsRPCDigiSimLink SHARED ${SimDataFormatsRPCDigiSimLink_EXTRA_SOURCES}
  src/RPCDigiSimLink.cc
)

set_target_properties(SimDataFormatsRPCDigiSimLink PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS SimDataFormatsRPCDigiSimLink)

target_include_directories(SimDataFormatsRPCDigiSimLink PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(SimDataFormatsRPCDigiSimLink PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

target_link_libraries(SimDataFormatsRPCDigiSimLink PUBLIC
DataFormatsCommon
DataFormatsGeometryVector
SimDataFormatsEncodedEventId
)


add_python_rules(SimDataFormats/RPCDigiSimLink)

add_script_rules(SimDataFormats/RPCDigiSimLink)

install( TARGETS SimDataFormatsRPCDigiSimLink DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


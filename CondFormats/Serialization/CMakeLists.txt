add_library(CondFormatsSerialization SHARED ${CondFormatsSerialization_EXTRA_SOURCES}
  src/templateInstantiations.cc
)

set_target_properties(CondFormatsSerialization PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS CondFormatsSerialization)

target_include_directories(CondFormatsSerialization PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(CondFormatsSerialization PUBLIC
${Boost_INCLUDE_DIR}
)

target_link_libraries(CondFormatsSerialization PUBLIC
Boost::serialization
)


add_python_rules(CondFormats/Serialization)

add_script_rules(CondFormats/Serialization)

install( TARGETS CondFormatsSerialization DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


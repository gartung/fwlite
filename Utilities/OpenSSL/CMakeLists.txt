add_library(UtilitiesOpenSSL SHARED ${UtilitiesOpenSSL_EXTRA_SOURCES}
  src/openssl_init.cc
)

set_target_properties(UtilitiesOpenSSL PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS UtilitiesOpenSSL)

target_include_directories(UtilitiesOpenSSL PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(UtilitiesOpenSSL PUBLIC ${OPENSSL_INCLUDE_DIRECTORY} )

target_link_libraries(UtilitiesOpenSSL PUBLIC ${OPENSSL_SSL_LIBRARY} ${OPENSSL_CRYPTO_LIBRARY})

add_python_rules(Utilities/OpenSSL)

add_script_rules(Utilities/OpenSSL)

install( TARGETS UtilitiesOpenSSL DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


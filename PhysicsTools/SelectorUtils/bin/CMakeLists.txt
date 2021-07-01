add_python_rules(PhysicsTools/SelectorUtils/bin/)

add_script_rules(PhysicsTools/SelectorUtils/bin/)

add_executable(calculateIdMD5
  calculateIdMD5.cc
)

set_target_properties( calculateIdMD5 PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_dependencies( ALL_BINS calculateIdMD5)

target_include_directories(calculateIdMD5 PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(calculateIdMD5 PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(calculateIdMD5 PUBLIC
PhysicsToolsSelectorUtils
${MD5_LIBRARY}
)


add_python_rules(PhysicsTools/SelectorUtils/bin/)

add_script_rules(PhysicsTools/SelectorUtils/bin/)

install( TARGETS calculateIdMD5 DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}  EXPORT stitched::)


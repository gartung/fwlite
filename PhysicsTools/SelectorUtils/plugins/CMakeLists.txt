add_library(PhysicsToolsSelectorUtils_plugins SHARED ${PhysicsToolsSelectorUtils_plugins_EXTRA_SOURCES}
  EtaMultiRangeCut.cc
  ExpressionEvaluatorCut.cc
  ExpressionEvaluatorCutWithEventContent.cc
  MaxAbsEtaCut.cc
  MinPtCut.cc
  MinPtCutInEtaRanges.cc
)

set_target_properties(PhysicsToolsSelectorUtils_plugins PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS PhysicsToolsSelectorUtils_plugins)

set_target_properties(PhysicsToolsSelectorUtils_plugins PROPERTIES PREFIX "plugin")

add_dependencies( ALL_PLUGINS PhysicsToolsSelectorUtils_plugins)

edm_write_config( PhysicsToolsSelectorUtils_plugins PhysicsTools/SelectorUtils)

target_include_directories(PhysicsToolsSelectorUtils_plugins PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(PhysicsToolsSelectorUtils_plugins PUBLIC
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

target_link_libraries(PhysicsToolsSelectorUtils_plugins PUBLIC
CommonToolsUtils
PhysicsToolsSelectorUtils
)


add_python_rules(PhysicsTools/SelectorUtils/plugins/)

add_script_rules(PhysicsTools/SelectorUtils/plugins/)

install( TARGETS PhysicsToolsSelectorUtils_plugins DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


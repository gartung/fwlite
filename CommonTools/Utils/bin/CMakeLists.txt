add_executable(runFormulaEvaluator
  runFormulaEvaluator.cc
)

set_target_properties( runFormulaEvaluator PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_dependencies( ALL_BINS runFormulaEvaluator)

target_include_directories(runFormulaEvaluator PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(runFormulaEvaluator PUBLIC
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

target_link_libraries(runFormulaEvaluator PUBLIC
CommonToolsUtils
)


add_python_rules(CommonTools/Utils/bin/)

add_script_rules(CommonTools/Utils/bin/)

install( TARGETS runFormulaEvaluator DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}  EXPORT stitched::)


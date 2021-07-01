add_executable(FWLiteLumiAccess
  FWLiteLumiAccess.cc
)

set_target_properties( FWLiteLumiAccess PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_dependencies( ALL_BINS FWLiteLumiAccess)

target_include_directories(FWLiteLumiAccess PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FWLiteLumiAccess PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${PYBIND11_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(FWLiteLumiAccess PUBLIC
PhysicsToolsFWLite
)


add_python_rules(PhysicsTools/FWLite/bin/)

add_script_rules(PhysicsTools/FWLite/bin/)

install( TARGETS FWLiteLumiAccess DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}  EXPORT stitched::)

add_executable(FWLiteHistograms
  FWLiteHistograms.cc
)

set_target_properties( FWLiteHistograms PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_dependencies( ALL_BINS FWLiteHistograms)

target_include_directories(FWLiteHistograms PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FWLiteHistograms PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${PYBIND11_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(FWLiteHistograms PUBLIC
PhysicsToolsFWLite
)


add_python_rules(PhysicsTools/FWLite/bin/)

add_script_rules(PhysicsTools/FWLite/bin/)

install( TARGETS FWLiteHistograms DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}  EXPORT stitched::)

add_executable(FWLiteWithPythonConfig
  FWLiteWithPythonConfig.cc
)

set_target_properties( FWLiteWithPythonConfig PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_dependencies( ALL_BINS FWLiteWithPythonConfig)

target_include_directories(FWLiteWithPythonConfig PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FWLiteWithPythonConfig PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${PYBIND11_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(FWLiteWithPythonConfig PUBLIC
PhysicsToolsFWLite
)


add_python_rules(PhysicsTools/FWLite/bin/)

add_script_rules(PhysicsTools/FWLite/bin/)

install( TARGETS FWLiteWithPythonConfig DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}  EXPORT stitched::)

add_executable(FWLiteWithSelectorUtils
  FWLiteWithSelectorUtils.cc
)

set_target_properties( FWLiteWithSelectorUtils PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_dependencies( ALL_BINS FWLiteWithSelectorUtils)

target_include_directories(FWLiteWithSelectorUtils PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FWLiteWithSelectorUtils PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${PYBIND11_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(FWLiteWithSelectorUtils PUBLIC
PhysicsToolsFWLite
)


add_python_rules(PhysicsTools/FWLite/bin/)

add_script_rules(PhysicsTools/FWLite/bin/)

install( TARGETS FWLiteWithSelectorUtils DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}  EXPORT stitched::)


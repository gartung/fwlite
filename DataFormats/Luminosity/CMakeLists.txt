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

cms_rootdict(DataFormatsLuminosity src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsLuminosity)

add_library(DataFormatsLuminosity SHARED ${DataFormatsLuminosity_EXTRA_SOURCES}
  src/BeamCurrentInfo.cc
  src/LumiDetails.cc
  src/LumiInfo.cc
  src/LumiInfoRunHeader.cc
  src/LumiSummary.cc
  src/LumiSummaryRunHeader.cc
)

set_target_properties(DataFormatsLuminosity PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsLuminosity)

target_include_directories(DataFormatsLuminosity PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsLuminosity PUBLIC
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

target_link_libraries(DataFormatsLuminosity PUBLIC
DataFormatsCommon
DataFormatsMath
FWCoreUtilities
)


add_python_rules(DataFormats/Luminosity)

add_script_rules(DataFormats/Luminosity)

install( TARGETS DataFormatsLuminosity DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


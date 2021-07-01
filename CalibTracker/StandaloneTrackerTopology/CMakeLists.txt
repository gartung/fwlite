add_library(CalibTrackerStandaloneTrackerTopology SHARED ${CalibTrackerStandaloneTrackerTopology_EXTRA_SOURCES}
  src/StandaloneTrackerTopology.cc
)

set_target_properties(CalibTrackerStandaloneTrackerTopology PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS CalibTrackerStandaloneTrackerTopology)

target_include_directories(CalibTrackerStandaloneTrackerTopology PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(CalibTrackerStandaloneTrackerTopology PUBLIC
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

target_link_libraries(CalibTrackerStandaloneTrackerTopology PUBLIC
${TINYXML2_LIBRARY}
DataFormatsTrackerCommon
)


add_python_rules(CalibTracker/StandaloneTrackerTopology)

add_script_rules(CalibTracker/StandaloneTrackerTopology)

install( TARGETS CalibTrackerStandaloneTrackerTopology DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


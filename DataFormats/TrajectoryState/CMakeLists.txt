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

cms_rootdict(DataFormatsTrajectoryState src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsTrajectoryState)

add_library(DataFormatsTrajectoryState SHARED ${DataFormatsTrajectoryState_EXTRA_SOURCES})

target_link_libraries(DataFormatsTrajectoryState PUBLIC
DataFormatsGeometryVector
DataFormatsMath
)

set_target_properties(DataFormatsTrajectoryState PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

 add_dependencies( ALL_LIBS DataFormatsTrajectoryState)

install( TARGETS DataFormatsTrajectoryState DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


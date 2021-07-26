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

cms_rootdict(DataFormatsGeometryVector src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsGeometryVector)

add_library(DataFormatsGeometryVector SHARED ${DataFormatsGeometryVector_EXTRA_SOURCES}
  src/TrackingJacobians.cc
  src/print.cc
)

set_target_properties(DataFormatsGeometryVector PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsGeometryVector)

target_include_directories(DataFormatsGeometryVector PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsGeometryVector PUBLIC
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

target_link_libraries(DataFormatsGeometryVector PUBLIC
DataFormatsMath
ROOT::Core
ROOT::GenVector
ROOT::MathCore
ROOT::MathMore
ROOT::Net
ROOT::RIO
ROOT::Thread
ROOT::Tree
${GSL_LIBRARY}
)


add_python_rules(DataFormats/GeometryVector)

add_script_rules(DataFormats/GeometryVector)

install( TARGETS DataFormatsGeometryVector DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


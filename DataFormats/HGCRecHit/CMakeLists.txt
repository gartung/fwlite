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

cms_rootdict(DataFormatsHGCRecHit src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsHGCRecHit)

add_library(DataFormatsHGCRecHit SHARED ${DataFormatsHGCRecHit_EXTRA_SOURCES}
  src/HGCRecHit.cc
  src/HGCUncalibratedRecHit.cc
)

set_target_properties(DataFormatsHGCRecHit PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsHGCRecHit)

target_include_directories(DataFormatsHGCRecHit PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsHGCRecHit PUBLIC
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

target_link_libraries(DataFormatsHGCRecHit PUBLIC
DataFormatsCaloRecHit
DataFormatsCommon
DataFormatsDetId
DataFormatsForwardDetId
DataFormatsHcalDetId
)


add_python_rules(DataFormats/HGCRecHit)

add_script_rules(DataFormats/HGCRecHit)

install( TARGETS DataFormatsHGCRecHit DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


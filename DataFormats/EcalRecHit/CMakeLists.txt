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

cms_rootdict(DataFormatsEcalRecHit src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsEcalRecHit)

add_library(DataFormatsEcalRecHit SHARED ${DataFormatsEcalRecHit_EXTRA_SOURCES}
  src/EcalRecHit.cc
  src/EcalUncalibratedRecHit.cc
)

set_target_properties(DataFormatsEcalRecHit PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsEcalRecHit)

target_include_directories(DataFormatsEcalRecHit PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsEcalRecHit PUBLIC
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

target_link_libraries(DataFormatsEcalRecHit PUBLIC
DataFormatsCaloRecHit
DataFormatsCommon
DataFormatsDetId
DataFormatsEcalDetId
DataFormatsEcalDigi
FWCoreMessageLogger
)


add_python_rules(DataFormats/EcalRecHit)

add_script_rules(DataFormats/EcalRecHit)

install( TARGETS DataFormatsEcalRecHit DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


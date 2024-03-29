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

cms_rootdict(SimDataFormatsCaloHit src/classes.h src/classes_def.xml)

add_rootdict_rules(SimDataFormatsCaloHit)

add_library(SimDataFormatsCaloHit SHARED ${SimDataFormatsCaloHit_EXTRA_SOURCES}
  src/CaloHit.cc
  src/CastorShowerEvent.cc
  src/CastorShowerLibraryInfo.cc
  src/HFShowerLibraryEventInfo.cc
  src/HFShowerPhoton.cc
  src/PCaloHit.cc
  src/PassiveHit.cc
)

set_target_properties(SimDataFormatsCaloHit PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS SimDataFormatsCaloHit)

target_include_directories(SimDataFormatsCaloHit PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(SimDataFormatsCaloHit PUBLIC
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

target_link_libraries(SimDataFormatsCaloHit PUBLIC
DataFormatsCommon
DataFormatsMath
SimDataFormatsEncodedEventId
Threads::Threads
)


add_python_rules(SimDataFormats/CaloHit)

add_script_rules(SimDataFormats/CaloHit)

install( TARGETS SimDataFormatsCaloHit DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


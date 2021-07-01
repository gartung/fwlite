include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

cms_rootdict(SimDataFormatsCrossingFrame src/classes.h src/classes_def.xml)

add_rootdict_rules(SimDataFormatsCrossingFrame)

add_library(SimDataFormatsCrossingFrame SHARED ${SimDataFormatsCrossingFrame_EXTRA_SOURCES}
  src/CrossingFramePlaybackInfoNew.cc
)

set_target_properties(SimDataFormatsCrossingFrame PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS SimDataFormatsCrossingFrame)

target_include_directories(SimDataFormatsCrossingFrame PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(SimDataFormatsCrossingFrame PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(SimDataFormatsCrossingFrame PUBLIC
DataFormatsCommon
DataFormatsProvenance
FWCoreMessageLogger
FWCoreUtilities
SimDataFormatsCaloHit
SimDataFormatsEncodedEventId
SimDataFormatsGeneratorProducts
SimDataFormatsTrack
SimDataFormatsTrackingHit
SimDataFormatsVertex
)


add_python_rules(SimDataFormats/CrossingFrame)

add_script_rules(SimDataFormats/CrossingFrame)

install( TARGETS SimDataFormatsCrossingFrame DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${FMT_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsPhase2TrackerDigi src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsPhase2TrackerDigi)

add_library(DataFormatsPhase2TrackerDigi SHARED ${DataFormatsPhase2TrackerDigi_EXTRA_SOURCES})

target_link_libraries(DataFormatsPhase2TrackerDigi PUBLIC DataFormatsCommon)

set_target_properties(DataFormatsPhase2TrackerDigi PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

 add_dependencies( ALL_LIBS DataFormatsPhase2TrackerDigi)

install( TARGETS DataFormatsPhase2TrackerDigi DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


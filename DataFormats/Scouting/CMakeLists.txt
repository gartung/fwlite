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

cms_rootdict(DataFormatsScouting src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsScouting)

add_library(DataFormatsScouting SHARED ${DataFormatsScouting_EXTRA_SOURCES}
)

set_target_properties(DataFormatsScouting PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsScouting)

target_include_directories(DataFormatsScouting PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsScouting PUBLIC
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

target_link_libraries(DataFormatsScouting PUBLIC
DataFormatsCommon
DataFormatsDetId
DataFormatsForwardDetId
DataFormatsGeometryVector
DataFormatsHcalDetId
DataFormatsL1Trigger
FWCoreMessageLogger
FWCoreUtilities
ROOT::Core
Threads::Threads
)


add_python_rules(DataFormats/Scouting)

add_script_rules(DataFormats/Scouting)

install( TARGETS DataFormatsScouting DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


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

cms_rootdict(DataFormatsHistograms src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsHistograms)

add_library(DataFormatsHistograms SHARED ${DataFormatsHistograms_EXTRA_SOURCES})

target_link_libraries(DataFormatsHistograms PUBLIC 
ROOT::Hist
ROOT::Matrix
DataFormatsCommon
DataFormatsProvenance
FWCoreUtilities
)

set_target_properties(DataFormatsHistograms PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

 add_dependencies( ALL_LIBS DataFormatsHistograms)

install( TARGETS DataFormatsHistograms DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


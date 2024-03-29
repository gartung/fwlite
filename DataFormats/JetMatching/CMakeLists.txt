include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsJetMatching src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsJetMatching)

add_library(DataFormatsJetMatching SHARED ${DataFormatsJetMatching_EXTRA_SOURCES})

target_link_libraries(DataFormatsJetMatching PUBLIC
DataFormatsCommon
DataFormatsHepMCCandidate
DataFormatsJetReco
DataFormatsMath
)

set_target_properties(DataFormatsJetMatching PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

 add_dependencies( ALL_LIBS DataFormatsJetMatching)

install( TARGETS DataFormatsJetMatching DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


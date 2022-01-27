include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
/usr/include
${HLS_INCLUDE_DIR}
)

cms_rootdict(DataFormatsL1TParticleFlow src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsL1TParticleFlow)

add_library(DataFormatsL1TParticleFlow SHARED ${DataFormatsL1TParticleFlow_EXTRA_SOURCES}
  src/HPSPFTau.cc
  src/PFCandidate.cc
  src/PFCluster.cc
  src/PFJet.cc
  src/PFTau.cc
  src/PFTrack.cc
)

set_target_properties(DataFormatsL1TParticleFlow PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsL1TParticleFlow)

target_include_directories(DataFormatsL1TParticleFlow PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsL1TParticleFlow PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
/usr/include
)

target_link_libraries(DataFormatsL1TParticleFlow PUBLIC
DataFormatsCandidate
DataFormatsCommon
DataFormatsL1TCorrelator
DataFormatsL1TrackTrigger
DataFormatsL1Trigger
FWCoreUtilities
ROOT::Core
)


add_python_rules(DataFormats/L1TParticleFlow)

add_script_rules(DataFormats/L1TParticleFlow)

install( TARGETS DataFormatsL1TParticleFlow DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


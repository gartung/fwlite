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

cms_rootdict(DataFormatsL1TCorrelator src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsL1TCorrelator)

add_library(DataFormatsL1TCorrelator SHARED ${DataFormatsL1TCorrelator_EXTRA_SOURCES}
  src/L1CaloTkTau.cc
  src/L1TrkTau.cc
  src/TkBsCandidate.cc
  src/TkEGTau.cc
  src/TkElectron.cc
  src/TkEm.cc
  src/TkEtMiss.cc
  src/TkGlbMuon.cc
  src/TkHTMiss.cc
  src/TkJet.cc
  src/TkMuon.cc
  src/TkPhiCandidate.cc
  src/TkTau.cc
)

set_target_properties(DataFormatsL1TCorrelator PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsL1TCorrelator)

target_include_directories(DataFormatsL1TCorrelator PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsL1TCorrelator PUBLIC
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

target_link_libraries(DataFormatsL1TCorrelator PUBLIC
DataFormatsCommon
DataFormatsHepMCCandidate
DataFormatsL1TMuon
DataFormatsL1TrackTrigger
DataFormatsL1Trigger
DataFormatsMath
ROOT::Core
)


add_python_rules(DataFormats/L1TCorrelator)

add_script_rules(DataFormats/L1TCorrelator)

install( TARGETS DataFormatsL1TCorrelator DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


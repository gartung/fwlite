include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

cms_rootdict(PhysicsToolsFWLite src/classes.h src/classes_def.xml)

add_rootdict_rules(PhysicsToolsFWLite)

add_library(PhysicsToolsFWLite SHARED ${PhysicsToolsFWLite_EXTRA_SOURCES}
  src/CommandLineParser.cc
  src/EventContainer.cc
  src/ScannerHelpers.cc
  src/TFileService.cc
  src/TH1Store.cc
  src/VariableMapCont.cc
)

set_target_properties(PhysicsToolsFWLite PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS PhysicsToolsFWLite)

target_include_directories(PhysicsToolsFWLite PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(PhysicsToolsFWLite PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(PhysicsToolsFWLite PUBLIC
CommonToolsUtils
DataFormatsCommon
DataFormatsFWLite
DataFormatsPatCandidates
FWCoreFWLite
FWCoreReflection
FWCoreUtilities
PhysicsToolsSelectorUtils
ROOT::Core
ROOT::Hist
ROOT::MathCore
ROOT::Matrix
ROOT::Net
ROOT::RIO
ROOT::Thread
ROOT::Tree
)


add_python_rules(PhysicsTools/FWLite)

add_script_rules(PhysicsTools/FWLite)

install( TARGETS PhysicsToolsFWLite DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


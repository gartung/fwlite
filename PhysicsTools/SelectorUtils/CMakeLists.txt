add_subdirectory(plugins)

include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${PYBIND11_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

cms_rootdict(PhysicsToolsSelectorUtils src/classes.h src/classes_def.xml)

add_rootdict_rules(PhysicsToolsSelectorUtils)

add_library(PhysicsToolsSelectorUtils SHARED ${PhysicsToolsSelectorUtils_EXTRA_SOURCES}
  src/CutApplicatorBase.cc
  src/EventSelector.cc
  src/PFMuonSelector.cc
  src/SimpleCutBasedElectronIDSelectionFunctor.cc
  src/WPlusJetsEventSelector.cc
  src/strbitset.cc
)

set_target_properties(PhysicsToolsSelectorUtils PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS PhysicsToolsSelectorUtils)

target_include_directories(PhysicsToolsSelectorUtils PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(PhysicsToolsSelectorUtils PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${OPENSSL_INCLUDE_DIR}
${PYBIND11_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${VDT_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(PhysicsToolsSelectorUtils PUBLIC
${OPENSSL_CRYPTO_LIBRARY}
${OPENSSL_SSL_LIBRARY}
CommonToolsUtils
DataFormatsBeamSpot
DataFormatsCandidate
DataFormatsCommon
DataFormatsEgammaCandidates
DataFormatsMuonReco
DataFormatsPatCandidates
DataFormatsProvenance
DataFormatsRecoCandidate
DataFormatsTauReco
DataFormatsTrackReco
DataFormatsVertexReco
FWCoreCommon
FWCoreFramework
FWCoreMessageLogger
FWCoreParameterSet
FWCoreParameterSetReader
FWCorePluginManager
FWCoreUtilities
ROOT::Core
ROOT::Hist
ROOT::MathCore
ROOT::Matrix
ROOT::Net
ROOT::Physics
ROOT::RIO
ROOT::Thread
ROOT::Tree
)


add_python_rules(PhysicsTools/SelectorUtils)

add_script_rules(PhysicsTools/SelectorUtils)

install( TARGETS PhysicsToolsSelectorUtils DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


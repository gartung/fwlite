include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
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
/usr/include
)

cms_rootdict(PhysicsToolsUtilities src/classes.h src/classes_def.xml)

add_rootdict_rules(PhysicsToolsUtilities)

add_library(PhysicsToolsUtilities SHARED ${PhysicsToolsUtilities_EXTRA_SOURCES}
  src/Lumi3DReWeighting.cc
  src/LumiReWeighting.cc
  src/NumericalIntegration.cc
  src/SideBandSubtraction.cc
  src/Variables.cc
)

set_target_properties(PhysicsToolsUtilities PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS PhysicsToolsUtilities)

target_include_directories(PhysicsToolsUtilities PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(PhysicsToolsUtilities PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
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
/usr/include
)

target_link_libraries(PhysicsToolsUtilities PUBLIC
DataFormatsCommon
DataFormatsProvenance
FWCoreCommon
FWCoreUtilities
ROOT::Core
ROOT::Foam
ROOT::Graf
ROOT::Hist
ROOT::MathCore
ROOT::Matrix
ROOT::Minuit
ROOT::Net
ROOT::Physics
ROOT::RIO
ROOT::RooFitCore
ROOT::Thread
ROOT::Tree
SimDataFormatsPileupSummaryInfo
Threads::Threads
)


add_python_rules(PhysicsTools/Utilities)

add_script_rules(PhysicsTools/Utilities)

install( TARGETS PhysicsToolsUtilities DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


add_library(CommonToolsStatistics SHARED ${CommonToolsStatistics_EXTRA_SOURCES}
  src/Accumulator.cc
  src/AutocorrelationAnalyzer.cc
  src/ChiSquared.cc
  src/ChiSquaredProbability.cc
  src/CombinationGenerator.cc
  src/GammaContinuedFraction.cc
  src/GammaLn.cc
  src/GammaSeries.cc
  src/IncompleteGammaComplement.cc
  src/LinearFit.cc
  src/LinearFitErrorsIn2Coord.cc
  src/PartitionGenerator.cc
  src/RandomMultiGauss.cc
  src/StatisticsException.cc
  src/hsm_1d.cc
  src/lms_1d.cc
  src/median.cc
)

set_target_properties(CommonToolsStatistics PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS CommonToolsStatistics)

target_include_directories(CommonToolsStatistics PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(CommonToolsStatistics PUBLIC
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
/usr/include
)

target_link_libraries(CommonToolsStatistics PUBLIC
${CLHEP_LIBRARIES}
DataFormatsCLHEP
DataFormatsMath
FWCoreMessageLogger
ROOT::Core
ROOT::GenVector
ROOT::MathCore
ROOT::MathMore
ROOT::Net
ROOT::RIO
ROOT::Thread
ROOT::Tree
Threads::Threads
crypt
dl
gsl
nsl
rt
)


add_python_rules(CommonTools/Statistics)

add_script_rules(CommonTools/Statistics)

install( TARGETS CommonToolsStatistics DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


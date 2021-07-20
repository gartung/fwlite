add_subdirectory(bin)
add_library(CommonToolsUtils SHARED ${CommonToolsUtils_EXTRA_SOURCES}
  src/Abort.cc
  src/ComparisonSetter.cc
  src/ExpressionConditionSetter.cc
  src/ExpressionEvaluator.cc
  src/ExpressionFunctionSetter.cc
  src/ExpressionSetter.cc
  src/ExpressionUnaryOperatorSetter.cc
  src/ExpressionVar.cc
  src/ExpressionVarSetter.cc
  src/FormulaEvaluator.cc
  src/LogicalBinaryOperator.cc
  src/MethodInvoker.cc
  src/MethodSetter.cc
  src/TFileDirectory.cc
  src/TH1AddDirectorySentry.cc
  src/cutParser.cc
  src/expressionParser.cc
  src/findDataMember.cc
  src/findMethod.cc
  src/formulaConstantEvaluator.cc
  src/formulaEvaluatorBase.cc
  src/formulaParameterEvaluator.cc
  src/formulaVariableEvaluator.cc
  src/popenCPP.cc
  src/returnType.cc
)

set_target_properties(CommonToolsUtils PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS CommonToolsUtils)

target_include_directories(CommonToolsUtils PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(CommonToolsUtils PUBLIC
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

target_link_libraries(CommonToolsUtils PUBLIC
DataFormatsCommon
DataFormatsMath
FWCoreMessageLogger
FWCoreParameterSet
FWCoreReflection
FWCoreUtilities
ROOT::Core
ROOT::Hist
ROOT::MathCore
ROOT::Matrix
ROOT::Net
ROOT::RIO
ROOT::Thread
ROOT::Tree
Threads::Threads
${Boost_THREAD_LIBRARY_RELEASE}
${Boost_DATE_TIME_LIBRARY_RELEASE}
crypt
dl
nsl
rt
)


add_python_rules(CommonTools/Utils)

add_script_rules(CommonTools/Utils)

install( TARGETS CommonToolsUtils DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


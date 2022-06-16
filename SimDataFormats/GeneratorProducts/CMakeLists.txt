include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${FMT_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

cms_rootdict(SimDataFormatsGeneratorProducts src/classes.h src/classes_def.xml)

add_rootdict_rules(SimDataFormatsGeneratorProducts)

add_library(SimDataFormatsGeneratorProducts SHARED ${SimDataFormatsGeneratorProducts_EXTRA_SOURCES}
  src/GenEventInfoProduct.cc
  src/GenEventInfoProduct3.cc
  src/GenFilterInfo.cc
  src/GenLumiInfoHeader.cc
  src/GenLumiInfoProduct.cc
  src/GenRunInfoProduct.cc
  src/HepMC3Product.cc
  src/HepMCProduct.cc
  src/LHEEventProduct.cc
  src/LHERunInfoProduct.cc
  src/LHEXMLStringProduct.cc
  src/hepmc_rootio.cc
)

set_target_properties(SimDataFormatsGeneratorProducts PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS SimDataFormatsGeneratorProducts)

target_include_directories(SimDataFormatsGeneratorProducts PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(SimDataFormatsGeneratorProducts PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CMSMD5_INCLUDE_DIR}
${FMT_INCLUDE_DIR}
${HEPMC_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
${XZ_INCLUDE_DIR}
/usr/include
)

target_link_libraries(SimDataFormatsGeneratorProducts PUBLIC
${HEPMC_HepMC_LIBRARY}
${HEPMC3_LIBRARIES}
DataFormatsCommon
FWCoreMessageLogger
FWCoreUtilities
ROOT::Core
ROOT::Hist
ROOT::MathCore
ROOT::Matrix
ROOT::Net
ROOT::RIO
ROOT::Thread
ROOT::Tree
lzma
)


add_python_rules(SimDataFormats/GeneratorProducts)

add_script_rules(SimDataFormats/GeneratorProducts)

install( TARGETS SimDataFormatsGeneratorProducts DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


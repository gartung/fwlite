include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

cms_rootdict(DataFormatsCaloRecHit src/classes.h src/classes_def.xml)

add_rootdict_rules(DataFormatsCaloRecHit)

add_library(DataFormatsCaloRecHit SHARED ${DataFormatsCaloRecHit_EXTRA_SOURCES}
  src/CaloCluster.cc
  src/CaloID.cc
  src/CaloRecHit.cc
)

set_target_properties(DataFormatsCaloRecHit PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS DataFormatsCaloRecHit)

target_include_directories(DataFormatsCaloRecHit PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(DataFormatsCaloRecHit PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${EIGEN_INCLUDE_DIR}/eigen3
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${MD5_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

target_link_libraries(DataFormatsCaloRecHit PUBLIC
DataFormatsCommon
DataFormatsDetId
DataFormatsMath
ROOT::Core
ROOT::GenVector
ROOT::MathCore
ROOT::MathMore
ROOT::Net
ROOT::RIO
ROOT::Thread
ROOT::Tree
)


add_python_rules(DataFormats/CaloRecHit)

add_script_rules(DataFormats/CaloRecHit)

install( TARGETS DataFormatsCaloRecHit DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


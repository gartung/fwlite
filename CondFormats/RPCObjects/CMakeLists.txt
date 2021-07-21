include_directories(${CMAKE_SOURCE_DIR}
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

cms_rootdict(CondFormatsRPCObjects src/classes.h src/classes_def.xml)

add_rootdict_rules(CondFormatsRPCObjects)

add_library(CondFormatsRPCObjects SHARED ${CondFormatsRPCObjects_EXTRA_SOURCES}
  src/ChamberLocationSpec.cc
  src/ChamberStripSpec.cc
  src/DBSpecToDetUnit.cc
  src/DccSpec.cc
  src/FebConnectorSpec.cc
  src/FebLocationSpec.cc
  src/L1RPCConeBuilder.cc
  src/L1RPCHwConfig.cc
  src/LinkBoardElectronicIndex.cc
  src/LinkBoardSpec.cc
  src/LinkConnSpec.cc
  src/RBCBoardSpecs.cc
  src/RPCAMCLink.cc
  src/RPCAMCLinkMap.cc
  src/RPCClusterSize.cc
  src/RPCDCCLink.cc
  src/RPCDCCLinkMap.cc
  src/RPCDQMObject.cc
  src/RPCDeadStrips.cc
  src/RPCFebConnector.cc
  src/RPCInverseAMCLinkMap.cc
  src/RPCInverseLBLinkMap.cc
  src/RPCLBLink.cc
  src/RPCLBLinkMap.cc
  src/RPCMaskedStrips.cc
  src/RPCObAlignment.cc
  src/RPCObCond.cc
  src/RPCObFebAssmap.cc
  src/RPCObFebmap.cc
  src/RPCObGas.cc
  src/RPCObGasHum.cc
  src/RPCObGasMix.cc
  src/RPCObGasmap.cc
  src/RPCObPVSSmap.cc
  src/RPCObUXC.cc
  src/RPCReadOutMapping.cc
  src/RPCRunIOV.cc
  src/RPCStripNoises.cc
  src/TTUBoardSpecs.cc
  src/T_EventSetup_L1RPCConeBuilder.cc
  src/T_EventSetup_L1RPCHwConfig.cc
  src/T_EventSetup_RBCBoardSpecs.cc
  src/T_EventSetup_RPCAMCLinkMap.cc
  src/T_EventSetup_RPCClusterSize.cc
  src/T_EventSetup_RPCDCCLinkMap.cc
  src/T_EventSetup_RPCDQMObject.cc
  src/T_EventSetup_RPCDeadStrips.cc
  src/T_EventSetup_RPCEMap.cc
  src/T_EventSetup_RPCInverseAMCLinkMap.cc
  src/T_EventSetup_RPCInverseLBLinkMap.cc
  src/T_EventSetup_RPCLBLinkMap.cc
  src/T_EventSetup_RPCMaskedStrips.cc
  src/T_EventSetup_RPCObAlignment.cc
  src/T_EventSetup_RPCObCond.cc
  src/T_EventSetup_RPCObFebAssmap.cc
  src/T_EventSetup_RPCObFebmap.cc
  src/T_EventSetup_RPCObGas.cc
  src/T_EventSetup_RPCObGasHum.cc
  src/T_EventSetup_RPCObGasMix.cc
  src/T_EventSetup_RPCObGasmap.cc
  src/T_EventSetup_RPCObPVSSmap.cc
  src/T_EventSetup_RPCObUXC.cc
  src/T_EventSetup_RPCReadOutMapping.cc
  src/T_EventSetup_RPCRunIOV.cc
  src/T_EventSetup_RPCStripNoises.cc
  src/T_EventSetup_TTUBoardSpecs.cc
  src/TriggerBoardSpec.cc
)

set_target_properties(CondFormatsRPCObjects PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS CondFormatsRPCObjects)

target_include_directories(CondFormatsRPCObjects PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(CondFormatsRPCObjects PUBLIC
${Boost_INCLUDE_DIR}
${Boost_INCLUDE_DIR}/python
${CLHEP_INCLUDE_DIR}
${CMSMD5_INCLUDE_DIR}
${FMT_INCLUDE_DIR}
${GSL_INCLUDE_DIR}
${Python_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
${TBB_INCLUDE_DIRS}
${TINYXML2_INCLUDE_DIR}
${UUID_INCLUDE_DIR}
/usr/include
)

target_link_libraries(CondFormatsRPCObjects PUBLIC
Boost::serialization
CondFormatsL1TObjects
CondFormatsSerialization
DataFormatsDetId
DataFormatsMuonDetId
FWCoreMessageLogger
FWCoreUtilities
Threads::Threads
)


add_python_rules(CondFormats/RPCObjects)

add_script_rules(CondFormats/RPCObjects)

install( TARGETS CondFormatsRPCObjects DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


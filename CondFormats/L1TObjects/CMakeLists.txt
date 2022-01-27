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

cms_rootdict(CondFormatsL1TObjects src/classes.h src/classes_def.xml)

add_rootdict_rules(CondFormatsL1TObjects)

add_library(CondFormatsL1TObjects SHARED ${CondFormatsL1TObjects_EXTRA_SOURCES}
  src/CaloConfig.cc
  src/CaloParams.cc
  src/GlobalStableParameters.cc
  src/L1CaloEcalScale.cc
  src/L1CaloEtScale.cc
  src/L1CaloGeometry.cc
  src/L1CaloHcalScale.cc
  src/L1GctChannelMask.cc
  src/L1GctJetFinderParams.cc
  src/L1GtAlgorithm.cc
  src/L1GtBoard.cc
  src/L1GtBoardMaps.cc
  src/L1GtBptxTemplate.cc
  src/L1GtCaloTemplate.cc
  src/L1GtCastorTemplate.cc
  src/L1GtCondition.cc
  src/L1GtCorrelationTemplate.cc
  src/L1GtDefinitions.cc
  src/L1GtEnergySumTemplate.cc
  src/L1GtExternalTemplate.cc
  src/L1GtHfBitCountsTemplate.cc
  src/L1GtHfRingEtSumsTemplate.cc
  src/L1GtJetCountsTemplate.cc
  src/L1GtMuonTemplate.cc
  src/L1GtParameters.cc
  src/L1GtPrescaleFactors.cc
  src/L1GtPsbConfig.cc
  src/L1GtPsbSetup.cc
  src/L1GtStableParameters.cc
  src/L1GtTriggerMask.cc
  src/L1GtTriggerMenu.cc
  src/L1MuCSCPtLut.cc
  src/L1MuCSCTFConfiguration.cc
  src/L1MuDTAssParam.cc
  src/L1MuDTEtaPattern.cc
  src/L1MuDTEtaPatternLut.cc
  src/L1MuDTExtLut.cc
  src/L1MuDTExtParam.cc
  src/L1MuDTPhiLut.cc
  src/L1MuDTPtaLut.cc
  src/L1MuDTQualPatternLut.cc
  src/L1MuDTTFMasks.cc
  src/L1MuDTTFParameters.cc
  src/L1RCTParameters.cc
  src/L1RPCBxOrConfig.cc
  src/L1RPCConfig.cc
  src/L1RPCHsbConfig.cc
  src/L1TGlobalParameters.cc
  src/L1TGlobalPrescalesVetos.cc
  src/L1TGlobalPrescalesVetosFract.cc
  src/L1TMuonBarrelKalmanParams.cc
  src/L1TMuonBarrelParams.cc
  src/L1TMuonEndCapForest.cc
  src/L1TMuonEndCapParams.cc
  src/L1TMuonGlobalParams.cc
  src/L1TMuonOverlapFwVersion.cc
  src/L1TMuonOverlapParams.cc
  src/L1TTwinMuxParams.cc
  src/L1TUtmAlgorithm.cc
  src/L1TUtmBin.cc
  src/L1TUtmCondition.cc
  src/L1TUtmCut.cc
  src/L1TUtmCutValue.cc
  src/L1TUtmObject.cc
  src/L1TUtmScale.cc
  src/L1TUtmTriggerMenu.cc
  src/L1TriggerKey.cc
  src/L1TriggerKeyExt.cc
  src/L1TriggerKeyList.cc
  src/L1TriggerKeyListExt.cc
  src/L1TriggerLutFile.cc
  src/LUT.cc
  src/RPCPattern.cc
  src/T_EventSetup_CaloConfig.cc
  src/T_EventSetup_CaloParams.cc
  src/T_EventSetup_GlobalStableParameters.cc
  src/T_EventSetup_L1CaloEcalScale.cc
  src/T_EventSetup_L1CaloEtScale.cc
  src/T_EventSetup_L1CaloGeometry.cc
  src/T_EventSetup_L1CaloHcalScale.cc
  src/T_EventSetup_L1GctChannelMask.cc
  src/T_EventSetup_L1GctJetFinderParams.cc
  src/T_EventSetup_L1GtBoardMaps.cc
  src/T_EventSetup_L1GtParameters.cc
  src/T_EventSetup_L1GtPrescaleFactors.cc
  src/T_EventSetup_L1GtPsbSetup.cc
  src/T_EventSetup_L1GtStableParameters.cc
  src/T_EventSetup_L1GtTriggerMask.cc
  src/T_EventSetup_L1GtTriggerMenu.cc
  src/T_EventSetup_L1MuCSCPtLut.cc
  src/T_EventSetup_L1MuCSCTFAlignment.cc
  src/T_EventSetup_L1MuCSCTFConfiguration.cc
  src/T_EventSetup_L1MuDTEtaPatternLut.cc
  src/T_EventSetup_L1MuDTExtLut.cc
  src/T_EventSetup_L1MuDTPhiLut.cc
  src/T_EventSetup_L1MuDTPtaLut.cc
  src/T_EventSetup_L1MuDTQualPatternLut.cc
  src/T_EventSetup_L1MuDTTFMasks.cc
  src/T_EventSetup_L1MuDTTFParameters.cc
  src/T_EventSetup_L1MuGMTChannelMask.cc
  src/T_EventSetup_L1MuGMTParameters.cc
  src/T_EventSetup_L1MuGMTScales.cc
  src/T_EventSetup_L1MuTriggerPtScale.cc
  src/T_EventSetup_L1MuTriggerScales.cc
  src/T_EventSetup_L1RCTChannelMask.cc
  src/T_EventSetup_L1RCTNoisyChannelMask.cc
  src/T_EventSetup_L1RCTParameters.cc
  src/T_EventSetup_L1RPCBxOrConfig.cc
  src/T_EventSetup_L1RPCConeDefinition.cc
  src/T_EventSetup_L1RPCConfig.cc
  src/T_EventSetup_L1RPCHsbConfig.cc
  src/T_EventSetup_L1TGMTParams.cc
  src/T_EventSetup_L1TGlobalParameters.cc
  src/T_EventSetup_L1TGlobalPrescalesVetos.cc
  src/T_EventSetup_L1TGlobalPrescalesVetosFract.cc
  src/T_EventSetup_L1TMTFOverlapParams.cc
  src/T_EventSetup_L1TMuonBarrelParams.cc
  src/T_EventSetup_L1TMuonEndCapForest.cc
  src/T_EventSetup_L1TMuonEndCapParams.cc
  src/T_EventSetup_L1TMuonOverlapFwVersion.cc
  src/T_EventSetup_L1TTwinMuxParams.cc
  src/T_EventSetup_L1TUtmAlgorithm.cc
  src/T_EventSetup_L1TUtmBin.cc
  src/T_EventSetup_L1TUtmCondition.cc
  src/T_EventSetup_L1TUtmCut.cc
  src/T_EventSetup_L1TUtmCutValue.cc
  src/T_EventSetup_L1TUtmObject.cc
  src/T_EventSetup_L1TUtmScale.cc
  src/T_EventSetup_L1TUtmTriggerMenu.cc
  src/T_EventSetup_L1TriggerKey.cc
  src/T_EventSetup_L1TriggerKeyExt.cc
  src/T_EventSetup_L1TriggerKeyList.cc
  src/T_EventSetup_L1TriggerKeyListExt.cc
)

set_target_properties(CondFormatsL1TObjects PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS CondFormatsL1TObjects)

target_include_directories(CondFormatsL1TObjects PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(CondFormatsL1TObjects PUBLIC
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

# Manually defined LD_FLAGS
# target_xcompile_options(CondFormatsL1TObjects -lXMLIO)

target_link_libraries(CondFormatsL1TObjects PUBLIC
${CLHEP_LIBRARIES}
Boost::serialization
CondFormatsSerialization
DataFormatsDetId
DataFormatsEcalDetId
DataFormatsL1CaloTrigger
DataFormatsL1GlobalCaloTrigger
DataFormatsL1GlobalTrigger
DataFormatsProvenance
FWCoreFramework
FWCoreMessageLogger
FWCoreParameterSet
FWCoreUtilities
ROOT::Core
ROOT::GenVector
ROOT::MathCore
ROOT::MathMore
ROOT::Net
ROOT::RIO
ROOT::Thread
ROOT::Tree
Threads::Threads
${GSL_LIBRARY}
)


add_python_rules(CondFormats/L1TObjects)

add_script_rules(CondFormats/L1TObjects)

install( TARGETS CondFormatsL1TObjects DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


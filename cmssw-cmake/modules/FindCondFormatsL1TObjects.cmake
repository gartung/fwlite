if(NOT CondFormatsL1TObjects_FOUND)
  set(CondFormatsL1TObjects_FOUND TRUE)
  mark_as_advanced(CondFormatsL1TObjects_FOUND)
cms_find_package(DataFormatsStdDictionaries)
cms_find_package(DataFormatsL1GlobalTrigger)
cms_find_package(DataFormatsL1GlobalCaloTrigger)
cms_find_package(DataFormatsL1GlobalMuonTrigger)
cms_find_package(FWCoreUtilities)
cms_find_package(FWCoreParameterSet)
cms_find_package(DataFormatsMuonDetId)
cms_find_package(CondFormatsSerialization)
cms_find_package(boost)
cms_find_package(boost_serialization)
list(APPEND LIBS CondFormatsL1TObjects)
endif()

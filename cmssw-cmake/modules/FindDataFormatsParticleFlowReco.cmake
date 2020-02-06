if(NOT DataFormatsParticleFlowReco_FOUND)
  set(DataFormatsParticleFlowReco_FOUND TRUE)
  mark_as_advanced(DataFormatsParticleFlowReco_FOUND)
cms_find_package(FWCoreUtilities)
cms_find_package(DataFormatsCandidate)
cms_find_package(DataFormatsVertexReco)
cms_find_package(DataFormatsTrajectorySeed)
cms_find_package(DataFormatsTrackReco)
cms_find_package(DataFormatsMuonReco)
cms_find_package(DataFormatsEgammaReco)
cms_find_package(DataFormatsEgammaCandidates)
cms_find_package(DataFormatsCommon)
cms_find_package(DataFormatsCaloRecHit)
cms_find_package(rootcore)
cms_find_package(rootmath)
cms_find_package(vdt_headers)
list(APPEND LIBS DataFormatsParticleFlowReco)
endif()

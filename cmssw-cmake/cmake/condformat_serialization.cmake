macro(condformat_serialization name header)
  set(FLAGS -Wno-attributes -std=c++1z -I$ENV{CMSSW_BASE}/src -I$ENV{PREFIX}/include)
  target_sources(${name} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/Serialization.cc)
  add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/Serialization.cc
                    COMMAND ${COND_SERIALIZATION_SCRIPT} --output ${CMAKE_CURRENT_BINARY_DIR}/Serialization.cc --package ${CMAKE_CURRENT_SOURCE_DIR} -- ${FLAGS}
                    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${header}
                    )
  unset(FLAGS)
endmacro()

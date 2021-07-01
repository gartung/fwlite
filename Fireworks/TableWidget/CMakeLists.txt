include_directories(${CMAKE_SOURCE_DIR}
${ROOT_INCLUDE_DIR}
)

cms_rootdict(FireworksTableWidget src/classes.h src/classes_def.xml)

add_rootdict_rules(FireworksTableWidget)

add_library(FireworksTableWidget SHARED ${FireworksTableWidget_EXTRA_SOURCES}
  src/FWAdapterHeaderTableManager.cc
  src/FWAdapterRowHeaderTableManager.cc
  src/FWCheckedTextTableCellRenderer.cc
  src/FWColumnLabelCellRenderer.cc
  src/FWFramedTextTableCellRenderer.cc
  src/FWTableCellRendererBase.cc
  src/FWTableManagerBase.cc
  src/FWTableWidget.cc
  src/FWTabularWidget.cc
  src/FWTextTableCellRenderer.cc
  src/GlobalContexts.cc
)

set_target_properties(FireworksTableWidget PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksTableWidget)

target_include_directories(FireworksTableWidget PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksTableWidget PUBLIC
${ROOT_INCLUDE_DIR}
)

target_link_libraries(FireworksTableWidget PUBLIC
ROOT::Core
ROOT::Gpad
ROOT::Graf
ROOT::Gui
ROOT::Hist
ROOT::MathCore
ROOT::Matrix
ROOT::Net
ROOT::RIO
ROOT::Rint
ROOT::Thread
ROOT::Tree
)


add_python_rules(Fireworks/TableWidget)

add_script_rules(Fireworks/TableWidget)

install( TARGETS FireworksTableWidget DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


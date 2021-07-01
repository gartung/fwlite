add_subdirectory(plugins)

include_directories(${CMAKE_SOURCE_DIR}
${OPENGL_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
)

cms_rootdict(FireworksVertices src/classes.h src/classes_def.xml)

add_rootdict_rules(FireworksVertices)

add_library(FireworksVertices SHARED ${FireworksVertices_EXTRA_SOURCES}
  src/TEveEllipsoid.cc
  src/TEveEllipsoidGL.cc
)

set_target_properties(FireworksVertices PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_dependencies( ALL_LIBS FireworksVertices)

target_include_directories(FireworksVertices PRIVATE ${CMAKE_SOURCE_DIR})

target_include_directories(FireworksVertices PUBLIC
${OPENGL_INCLUDE_DIR}
${ROOT_INCLUDE_DIR}
)

target_link_libraries(FireworksVertices PUBLIC
${OPENGL_gl_LIBRARY}
${OPENGL_glu_LIBRARY}
OpenGL::GL
OpenGL::GLU
ROOT::Core
ROOT::Eve
ROOT::Geom
ROOT::GeomPainter
ROOT::Gpad
ROOT::Graf
ROOT::Graf3d
ROOT::Gui
ROOT::Hist
ROOT::MathCore
ROOT::Matrix
ROOT::Net
ROOT::Physics
ROOT::Postscript
ROOT::RGL
ROOT::RIO
ROOT::Rint
ROOT::Thread
ROOT::Tree
ROOT::TreePlayer
)


add_python_rules(Fireworks/Vertices)

add_script_rules(Fireworks/Vertices)

install( TARGETS FireworksVertices DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR} EXPORT stitched::)


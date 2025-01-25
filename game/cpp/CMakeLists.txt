cmake_minimum_required(VERSION 3.28)
project(game)

find_package(raylib 4.5 REQUIRED)

set(CMAKE_CXX_STANDARD 20)

add_executable(${PROJECT_NAME} 
  main.cpp 
  game.cpp
  utils.cpp
  tilemap/tile.cpp
  tilemap/tilemap.cpp
  scenes/scene.cpp
  scenes/game_scene.cpp
  controls/button.cpp
  units/unit.cpp
)

target_link_libraries(${PROJECT_NAME} raylib)

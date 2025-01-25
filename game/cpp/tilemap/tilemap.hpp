#include "raylib.h"
#include <memory>
#include <vector>
#include "../utils.hpp"
#pragma once

class Tile;

class Game;

class TileMap{

	std::vector<std::vector<std::unique_ptr<Tile>>> tileMap;

	Vec2 size;

	const int numberOfTileTypes = 3;

	int tileSize;

	MyCamera camera;

	std::vector<std::vector<std::unique_ptr<Tile>>> _generateTileMap(Vec2 size);	

	Vec2 _getTileIndex(Vec2 coords);

public:

	TileMap(Vec2 size);

	~TileMap();

	void drawTileMap();

	void getUserInput();


	
};

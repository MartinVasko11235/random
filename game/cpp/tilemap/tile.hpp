#include <memory>
#include <raylib.h>
#include "../enums.hpp"
#include "../utils.hpp"
#pragma once

class Unit;

class Tile{

	int size;
	TileType type;
	Color color;
	Vec2 coords;

	std::unique_ptr<Unit> unit;
	bool hasUnit;

public:

	Tile(TileType type, int size, Vec2 coords);

	~Tile();

	void drawTile();

	void addUnit(std::unique_ptr<Unit> unit);
		
};

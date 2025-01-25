#include "tile.hpp"
#include <raylib.h>
#include "../units/unit.hpp"


Tile::Tile(TileType type, int size, Vec2 coords) : type(type), size(size), coords(coords){

	hasUnit = false;

	switch (type) {
    	case LAND: this->color = GREEN; break;
    	case WATER: this->color = BLUE; break;
    	case MOUNTAIN: this->color = WHITE; break;
    }
}

Tile::~Tile(){
	// unload everything
}

void Tile::drawTile() { 
	DrawRectangle(coords.x, coords.y, size, size, BLACK);
	DrawRectangle(coords.x + 1, coords.y + 1, size - 1, size - 1, color); 
	if(hasUnit) unit->drawUnit();
}

void Tile::addUnit(std::unique_ptr<Unit> unit){
	this->unit = std::move(unit);
}

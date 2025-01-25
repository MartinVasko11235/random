#include "tilemap.hpp"
#include "tile.hpp"
#include "raylib.h"
#include "../enums.hpp"
#include <algorithm>
#include <memory>
#include <random>

TileMap::TileMap(Vec2 size){
	tileSize = std::min(GetScreenHeight(), GetScreenWidth())/15;
	this->tileMap = _generateTileMap(size); 
	camera.set(Vec2(tileSize*8, tileSize*8), Vec2(GetScreenWidth()/2, GetScreenHeight()/2), 1.0f);
}

TileMap::~TileMap(){}


std::vector<std::vector<std::unique_ptr<Tile>>> TileMap::_generateTileMap(Vec2 size){

	std::vector<std::vector<std::unique_ptr<Tile>>> tileMap(size.y); 

	std::random_device rd;
	std::mt19937 rng(rd());
	std::uniform_int_distribution<std::mt19937::result_type> dist(0, numberOfTileTypes - 1);
	
	for (int i = 0; i < size.y; i++){
		for (int j = 0; j < size.x; j++){
			Vec2 coords(tileSize*i, tileSize*j);
			int val = dist(rng);
			TileType type;
			switch (val) {
            	case 0: type = LAND; break;
            	case 1: type = WATER; break;
            	case 2: type = MOUNTAIN; break;
            }
			tileMap[i].push_back(std::make_unique<Tile>(type, tileSize, coords));			
		}
	}

	return tileMap;
};

void TileMap::drawTileMap(){
	BeginMode2D(camera.getCamera2D());
	for (auto& row : tileMap){
		for (auto& tile : row){
			tile->drawTile();
		}
	}
	EndMode2D();
}

void TileMap::getUserInput(){
	if (IsMouseButtonPressed(0)){
		Vec2 index = _getTileIndex(Vec2(GetMousePosition()));
		dbg("idx", index.x, index.y);
	}
	if (IsMouseButtonDown(0)){
		camera.moveTarget(Vec2(GetMouseDelta()));
		// dbg("delta", GetMouseDelta().x, GetMouseDelta().y);
	}
	camera.addZoom(GetMouseWheelMove());
	if (camera.getZoom() > 10) camera.setZoom(10);
	else if (camera.getZoom() < 0.1) camera.setZoom(0.1);
}

Vec2 TileMap::_getTileIndex(Vec2 coords){
	return Vec2(
		(coords.x - (camera.getOffset().x - camera.getTarget().x*camera.getZoom()))/(tileSize*camera.getZoom()),
		(coords.y - (camera.getOffset().y - camera.getTarget().y*camera.getZoom()))/(tileSize*camera.getZoom())
	);
}

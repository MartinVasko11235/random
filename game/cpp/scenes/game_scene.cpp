#include "game_scene.hpp"
#include "../tilemap/tilemap.hpp"
#include <memory>
#include "raylib.h"


GameScene::GameScene(){
	tileMapSize = Vec2(15, 15);
	tileMap = std::make_unique<TileMap>(tileMapSize);
}

GameScene::~GameScene(){}

void GameScene::drawScene(){
	tileMap->drawTileMap();
}

void GameScene::getUserInput(){
	tileMap->getUserInput();
}

void GameScene::update(){
	
}

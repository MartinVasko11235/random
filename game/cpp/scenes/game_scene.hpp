#include <memory>
#include "../utils.hpp"
#include "scene.hpp"
#pragma once

class TileMap;

class GameScene : public Scene{

	Vec2 tileMapSize;


	std::unique_ptr<TileMap> tileMap;

public:

	GameScene();

	~GameScene();

	void drawScene() override;

	void getUserInput() override;

	void update() override;
};

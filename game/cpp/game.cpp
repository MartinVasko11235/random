#include "game.hpp"
#include "raylib.h"
#include "scenes/scene.hpp"
#include "scenes/game_scene.hpp"
#include <memory>

Game::Game(){
	InitWindow(GetScreenWidth(), GetScreenHeight(), "game");
	SetTargetFPS(60);
	_loadGameScene();
}

Game::~Game(){
	CloseWindow();
}

void Game::run(){
	while(!WindowShouldClose()){
		_updateGameState();
		_drawCurrentState();
	}
}

void Game::_updateGameState(){
	currentScene->getUserInput();
}

void Game::_drawCurrentState(){
	BeginDrawing();
	ClearBackground(BLACK);
	currentScene->drawScene();
	EndDrawing();
}

void Game::_loadGameScene(){
	currentScene = std::make_unique<GameScene>();
}

void Game::_loadLobbyScene(){
	
}

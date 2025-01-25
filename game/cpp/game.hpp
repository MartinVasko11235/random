#include <memory>
#include "enums.hpp"
#pragma once

class Scene;

class Game {


	SceneEnum sceneEnum;
	std::unique_ptr<Scene> currentScene;
		
	void _drawCurrentState();

	void _updateGameState();

	void _loadGameScene();

	void _loadLobbyScene();

public:

	Game(); 

	~Game();

	void run();
};

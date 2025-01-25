#pragma once

class Game;

class Scene{

public:

	Scene();

	~Scene();

	virtual void drawScene();

	virtual void getUserInput();

	virtual void update();
};

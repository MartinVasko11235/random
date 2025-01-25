#pragma once

#include "../utils.hpp"
#include <string>

class Button{

	Vec2 coords;

	int radius;

	Color color;

	std::string label;

public:

	Button(Vec2 coords, int radius, Color color, std::string label);

	~Button();

	bool isPressed(Vec2 coords);

	void drawButton();
};

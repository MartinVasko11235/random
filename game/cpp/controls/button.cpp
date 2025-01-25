#include "button.hpp"
#include <raylib.h>

Button::Button(Vec2 coords, int radius, Color color, std::string label) : coords(coords), radius(radius), color(color), label(label){}

bool Button::isPressed(Vec2 coords){
	return (
		std::abs(this->coords.x - coords.x)*std::abs(this->coords.x - coords.x) +
		std::abs(this->coords.y - coords.y)*std::abs(this->coords.y - coords.y) < radius*radius
	);
}


void Button::drawButton(){
	DrawCircle(coords.x, coords.y, radius, color);
	DrawText(label.c_str(), coords.x, coords.y, 10, BLACK);
}

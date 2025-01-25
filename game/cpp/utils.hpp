#include "raylib.h"
#pragma once

#include <iostream>
struct Vec2{
	int x, y;
	Vec2()=default;
	Vec2(int x, int y) : x(x), y(y){};
	Vec2(Vector2 vec) : x(vec.x), y(vec.y){};
};

template<typename T>
void dbg(T t){
	std::cout << t << std::endl;
}

template<typename T, typename ... Args>
void dbg(T t, Args ... args){
	std::cout << t << " ";
	dbg(args ...);
}

class MyCamera{

	Camera2D camera;

public:

	MyCamera();
	~MyCamera();

	void set(Vec2 target, Vec2 offset, float zoom);

	Camera2D getCamera2D();

	void addZoom(float toAdd);

	void moveTarget(Vec2 delta);

	void setZoom(float zoom);		

	Vec2 getTarget();

	Vec2 getOffset();

	float getZoom();
};

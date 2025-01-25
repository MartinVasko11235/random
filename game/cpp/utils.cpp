#include "utils.hpp"
#include <raylib.h>

MyCamera::MyCamera()=default;

MyCamera::~MyCamera(){};

void MyCamera::set(Vec2 target, Vec2 offset, float zoom){
	camera.target.x = target.x;
	camera.target.y = target.y;
	camera.offset.x = offset.x;
	camera.offset.y = offset.y;
	camera.zoom = zoom;
	camera.rotation = 0.0f;
}


Camera2D MyCamera::getCamera2D(){
	return camera;
}

void MyCamera::moveTarget(Vec2 delta){
	camera.target.x -= delta.x/camera.zoom;
	camera.target.y -= delta.y/camera.zoom;
}

void MyCamera::addZoom(float toAdd){
	camera.zoom += toAdd*0.1f;
}

void MyCamera::setZoom(float zoom){
	camera.zoom = zoom;
}

Vec2 MyCamera::getTarget(){
	return Vec2(camera.target);
}

Vec2 MyCamera::getOffset(){
	return Vec2(camera.offset);
}

float MyCamera::getZoom(){
	return camera.zoom;
}

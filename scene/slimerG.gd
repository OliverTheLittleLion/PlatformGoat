extends Node2D

const SPEED = 60

var direction = 1
@onready var ray_cast_right = $RayCastR
@onready var ray_cast_left = $RayCastL
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
	if ray_cast_left.is_colliding():
		direction = 1

	position.x += SPEED * direction * delta

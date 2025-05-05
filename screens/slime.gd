extends Node2D

const SPEED = 60

var direction = 1

@onready var raycastright = $raycastright
@onready var raycastleft = $raycastleft
@onready var animated_sprite = $AnimatedSprite2D

func _process(delta):
	if raycastright.is_colliding():
		var collider = raycastright.get_collider()
		if collider.name !="player":
			direction = -1
			animated_sprite.flip_h = true
		print ("")
	if raycastleft.is_colliding():
		var collider = raycastleft.get_collider()
		if collider.name !="player":
			direction = 1
		animated_sprite.flip_h = false
	
	
	position.x += direction * SPEED * delta

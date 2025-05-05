extends Area2D

@onready var timer: Timer = $Timer

func _init() -> void:
	print("Screen killzone")

func _on_body_entered(body):
	#print("you died!")
	
	#print("%s collided with %s." % [name, body.name])
	if (body.name != "player"):
		
		return
		
	print("Reset timer started.")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start(0.5)

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()

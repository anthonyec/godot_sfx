extends Node3D

func _ready() -> void:
	SFX.play_everywhere("ui/chime")
	SFX.play_attached_to_node("enviroment/wobble", $Cube)

func _on_timer_timeout() -> void:
	var random_position = Vector3(randf_range(0, 10), 0, randf_range(0, 10))
	
	SFX.play_at_location("footsteps/boot_[%n]", random_position)
	
	# Restart the timer to emulate walking.
	$Timer.start()

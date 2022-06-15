extends Action


const FacingDirection := preload("res://src/structures/Direction.gd").FacingDirection

func when_active_do():
	manager.movement_direction += FacingDirection.RIGHT

func is_active():
	return (
		Input.is_action_pressed("move.right")
		and not Input.is_action_pressed("move.left")
	) 

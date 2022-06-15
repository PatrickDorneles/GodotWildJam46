extends Action


const FacingDirection := preload("res://src/structures/Direction.gd").FacingDirection

func when_active_do():
	manager.movement_direction += FacingDirection.LEFT

func is_active():
	return (
		Input.is_action_pressed("move.left")
		and not Input.is_action_pressed("move.right")
	) 

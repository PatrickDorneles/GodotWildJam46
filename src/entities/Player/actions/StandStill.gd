extends Action


func when_active_do():
	manager.movement_direction = Vector2.ZERO

func is_active():
	return (
		not Input.is_action_pressed("move.left")
		and not Input.is_action_pressed("move.right")
		and not Input.is_action_pressed("move.up")
		and not Input.is_action_pressed("move.down")
	) 

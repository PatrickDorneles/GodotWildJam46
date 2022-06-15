class_name Action
extends Node

onready var manager = get_parent()

func _process(delta: float) -> void:
	if is_active():
		when_active_do()

func when_active_do():
	pass

func is_active():
	return false

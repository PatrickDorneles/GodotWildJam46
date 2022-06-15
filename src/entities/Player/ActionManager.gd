extends Node

onready var FacingDirection := preload("res://src/structures/Direction.gd").FacingDirection
onready var animation_player := get_node("../AnimationPlayer")
onready var animation_tree := get_node("../AnimationTree")

export var motion = Vector2.ZERO
var movement_direction = Vector2.ZERO
onready var facing_direction = FacingDirection.UP

func _physics_process(delta: float) -> void:
	movement_direction = movement_direction.normalized()
	print(movement_direction)
	animation_tree.set("parameters/Idle/blend_position", movement_direction)
	

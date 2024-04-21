extends Node

@export var sword_ability: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.timeout.connect(on_timer_timeout)

	
func on_timer_timeout():
	var player_node: Node2D = get_tree().get_first_node_in_group("player")
	if player_node == null:
		return
	var sword_instance: Node2D = sword_ability.instantiate()
	player_node.get_parent().add_child(sword_instance)
	sword_instance.global_position = player_node.global_position

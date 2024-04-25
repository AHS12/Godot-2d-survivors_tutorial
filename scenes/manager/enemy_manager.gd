extends Node

const SPAWN_RADIUS = 400

@export var basic_enemy_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.timeout.connect(on_timer_timeout)

func on_timer_timeout():
	var player: Node2D = get_tree().get_first_node_in_group("player")
	if player == null: return
	var random_direction = Vector2.RIGHT.rotated(randf_range(0, TAU))
	var spawn_position = player.global_position + (random_direction * SPAWN_RADIUS)
	var enemy: Node2D = basic_enemy_scene.instantiate()
	get_parent().add_child(enemy)
	enemy.global_position = spawn_position
	

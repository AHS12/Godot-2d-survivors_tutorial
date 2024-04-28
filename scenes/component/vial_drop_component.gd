extends Node

@export_range(0, 1) var drop_chance: float = 0.5
@export var vial_scene: PackedScene
@export var health_component: Node

func _ready():
	(health_component as HealthComponent).died.connect(on_died)
	

func on_died():
	if randf() > drop_chance: return
	if vial_scene == null: return
	if not owner is Node2D: return
	var spawn_position = (owner as Node2D).global_position
	var vial_instance: Node2D = vial_scene.instantiate()
	owner.get_parent().add_child(vial_instance)
	vial_instance.global_position = spawn_position

	

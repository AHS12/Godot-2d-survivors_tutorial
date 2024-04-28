extends Node
class_name HealthComponent

signal died

@export var max_health: float = 10
var current_helath


func _ready():
	current_helath = max_health

func damage(damageReceived: float):
	current_helath = max(current_helath - damageReceived, 0)
	Callable(death).call_deferred()
	
		
func death():
	if current_helath == 0:
		print("just die")
		died.emit()
		owner.queue_free()

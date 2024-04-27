extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Area2D.area_entered.connect(on_area_entered)


func on_area_entered(otherArea: Area2D):
	GameEvents.emit_experience_vile_Collected(1)
	queue_free()

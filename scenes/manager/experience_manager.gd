extends Node

var current_experience = 0

func _ready():
	GameEvents.experience_vial_collection.connect(on_experience_vile_Collected)

func increment_experience(number: float):
	current_experience += number
	print(current_experience)
	
func on_experience_vile_Collected(number: float):
	increment_experience(number)


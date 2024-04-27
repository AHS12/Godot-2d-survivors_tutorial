extends Node

signal experience_vial_collection(number: float)

func emit_experience_vile_Collected(number: float):
	experience_vial_collection.emit(number)
	

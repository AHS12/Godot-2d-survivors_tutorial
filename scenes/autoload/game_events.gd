extends Node

signal experience_vial_collection(number: float)
signal ability_upgrade_added(upgrade: AbilityUpgrade, current_upgrade: Dictionary)

func emit_experience_vile_Collected(number: float):
	experience_vial_collection.emit(number)
	
func emit_ability_upgrade_added(upgrade: AbilityUpgrade, current_upgrade: Dictionary):
	ability_upgrade_added.emit(upgrade,current_upgrade)
	

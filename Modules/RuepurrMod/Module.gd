extends Module

func _init():
	id = "RuepurrMod"
	author = "Ruepurr"

	items = [
		"res://Modules/RuepurrMod/Taser.gd",
	]
	attacks = [
		"res://Modules/RuepurrMod/TaserPCAttack.gd",
	]

func getFlags():
	return {}

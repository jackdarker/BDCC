extends Module

func _init():
	id = "RuepurrMod"
	author = "Ruepurr"
	
	scenes = []
	characters = []
	items = [
		"res://Modules/RuepurrMod/Items/Taser.gd",
		"res://Modules/RuepurrMod/Items/TFUndoPill2.gd",
	]
	events = []
	quests = []
	
	attacks = [
		"res://Modules/RuepurrMod/Attacks/TaserPCAttack.gd",
	]
	bodyparts = []
	species = []
	skills = []
	perks = []
	lustActions = []
	buffs = []
	statusEffects = []
	worldEdits = []
	gameExtenders = []
	computers = []
	partSkins = []
	stageScenes = []
	lootTables = []
	lootLists = []
	fetishes = []
	sexGoals = []
	sexActivities = []
	sexTypes = []
	fluids = []
	speechModifiers = []
	slaveBreakTasks = []
	slaveTypes = []
	slaveActions = []
	slaveEvents = []
	slaveActivities = []

func getFlags():
	return {}


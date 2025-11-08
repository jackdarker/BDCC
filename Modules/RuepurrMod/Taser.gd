extends ItemBase

var charges:int = 1
var maxCharges:int = 1

func useCharge(amount = 1):
	charges -= amount
	if(charges <= 0):
		charges = 0
		#destroyMe()

func getCharges():
	return charges

func getDamageRange():
	return [20, 40]

func _init():
	id = "Taser"

func getVisibleName():
	return "Taser"

func getDescription():
	var text = "Some kind of gun-shaped plastic with 2 electrodes on the front.\nDoes "+Util.dmgRangeArrayStr(getDamageRange())+" physical damage and might stun.\nHas enough durability for "+str(charges)+" "+Util.multipleOrSingularEnding(charges, "use")

	return text

func saveData():
	var data = .saveData()
	
	data["charges"] = charges
	
	return data
	
func loadData(data):
	.loadData(data)
	
	charges = SAVE.loadVar(data, "charges", 1)

func getAttacks():
	return ["TaserPCAttack"]	

func getTags():
	return [ItemTag.Illegal,ItemTag.SoldByTheAnnouncer]

func getItemCategory():
	return ItemCategory.Weapons

func getInventoryImage():
	return "res://Images/Items/weapon/shiv.png"   #TODO

func canUseInCombat():
	return false

func useInCombat(_attacker, _receiver):
	if(charges<maxCharges):
		charges+=1
		return "{attacker.name} charged the device and it has now "+str(charges)+" "+Util.multipleOrSingularEnding(charges, "use")
	else:
		return "The device is already charged to maximum."

func getPossibleActions():
	return [
		{
			"name": "Charge it!",
			"scene": "UseItemLikeInCombatScene",
			"description": "Charge the thing",
		}, #TODO use on self
	]

func getPrice():
	return 30

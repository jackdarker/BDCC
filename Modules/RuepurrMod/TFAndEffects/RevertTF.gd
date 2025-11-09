extends TFBase



func _init():
	id = "RevertTF"
	canStack = false
	pointsOnUnlock = 25

func getName() -> String:
    return "Reverts transformations"

func getPillName() -> String:
    return "Morph out slow"

func getUnlockData() -> Dictionary:
    return {    #TODO !
        eliza = "Wow! This one is just.. packed.. with all sorts of DNA. I see a lot of different patterns.. but they do share something in common. I think this one has the potential to completely change you into something else! To override your species! Just imagine the adventures you could have in a new body. I will call it.. 'WildShift'.",
        tryOptions = [            
        ],
    }

func getPillDatabaseDesc() -> String:   #TODO 
    return "This drug will gradually switch your species, morphing your body parts one by one.\n\nThe first stage will happen after about 15 minutes. After that, the next ones will happen roughly every 10 hours. Each next stage will take longer than the last. This could be accelerated only by using the QuickShift drug.\n\nThis drug doesn’t have a set amount of stages. It will reach its final stage when there is nothing left to transform. It’s possible to modify the drug to pick the target species and which parts should be kept as is by using the advanced lab equipment."
    
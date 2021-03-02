extends Button

var improveReactorCost = Global.getImproveReactorx10Cost()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	improveReactorCost = Global.getImproveReactorx10Cost()
	self.text = "x10 (Cost: " + str(improveReactorCost) +  " )"
	if(improveReactorCost > Global.energy):
		self.disabled = true
	else:
		self.disabled = false
	


func _on_ImproveReactorsButton_pressed():
	if(Global.energy >= improveReactorCost):
		Global.energy -= improveReactorCost
		Global.reactorstrength += 10;


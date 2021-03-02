extends Button

var improveReactorCost = Global.getImproveReactorCost()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "Improve Reactors (Cost: " + str(improveReactorCost) +  " )"
	if(improveReactorCost > Global.energy):
		self.disabled = true
	else:
		self.disabled = false
	


func _on_ImproveReactorsButton_pressed():
	if(Global.energy >= improveReactorCost):
		Global.energy -= improveReactorCost
		Global.reactorstrength += 1;
	improveReactorCost = Global.getImproveReactorCost()

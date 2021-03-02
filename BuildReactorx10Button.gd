extends Button


var buildReactorCost = Global.getBuildReactorx10Cost()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	buildReactorCost = Global.getBuildReactorx10Cost()
	self.text = "x10 (Cost: " + str(buildReactorCost) +  " )"
	if(buildReactorCost > Global.energy):
		self.disabled = true
	else:
		self.disabled = false


func _on_BuildReactor_pressed():
	if(Global.energy >= buildReactorCost):
		Global.energy -= buildReactorCost
		Global.reactors += 10;


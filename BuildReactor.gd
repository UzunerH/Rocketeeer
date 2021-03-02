extends Button

var buildReactorCost = Global.getBuildReactorCost()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	buildReactorCost = Global.getBuildReactorCost()
	self.text = "Build Reactor (Cost: " + str(buildReactorCost) +  " )"
	if(buildReactorCost > Global.energy):
		self.disabled = true
	else:
		self.disabled = false


func _on_BuildReactor_pressed():
	if(Global.energy >= buildReactorCost):
		Global.energy -= buildReactorCost
		Global.reactors += 1;


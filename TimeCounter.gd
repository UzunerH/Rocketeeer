extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var minutes = int(Global.score) / 60
	var seconds = int(Global.score) % 60
	var str_elapsed = "%02d : %02d" % [minutes, seconds]
	self.text = "Time: " + str_elapsed



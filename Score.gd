extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var minutes = int(Global.score) / 60
	var seconds = int(Global.score) % 60
	var str_elapsed = "%02d : %02d" % [minutes, seconds]
	if(Global.score < Global.bestScore):
		Global.bestScore = Global.score
		str_elapsed += " - Thats a new Highscore! Good Job my dude!"
	self.text = "Your time is: " + str_elapsed 



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

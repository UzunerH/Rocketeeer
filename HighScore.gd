extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.bestScore == 9223372036854775807):
		self.text = "Highscore: no Highscore yet :("
	else:
		var minutes = int(Global.bestScore) / 60
		var seconds = int(Global.bestScore) % 60
		var str_elapsed = "%02d : %02d" % [minutes, seconds]
		self.text = "Highscore: " + str_elapsed



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

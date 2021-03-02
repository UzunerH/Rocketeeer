extends Node2D

# Variables
var energy = 10
var reactors = 0
var reactorstrength = 1
var tick = 0
var score = 0.0
var bestScore = 9223372036854775807
var gameOver = false

# Nodes
var BuildReactorButton
var ImproveReactorButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(gameOver == false):
		score += delta
		tick += delta

		if(tick >= 1):
			tick -= 1
			energy += reactors * reactorstrength
		
		if(energy >= 1000000):
			gameOver = true
			get_tree().change_scene("res://WonScreen.tscn")

			
func getBuildReactorCost():
	return 10 + Global.reactors * 10
func getBuildReactorx10Cost():
	var reactorsTmp = reactors
	var cost = 0
	
	for i in range(0,10):
		cost += 10 + reactorsTmp * 10
		reactorsTmp += 1
	return cost
	
func getImproveReactorCost():
	return 10 + Global.reactorstrength * 10
func getImproveReactorx10Cost():
	var reactorStrengthTmp = reactorstrength
	var cost = 0
	
	for i in range(0,10):
		cost += 10 + reactorStrengthTmp * 10
		reactorStrengthTmp += 1
	return cost

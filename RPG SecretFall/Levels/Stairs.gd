extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal activate_stairs


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Puzzle_puzzle_solved():
	self.visible = true
	emit_signal("activate_stairs")
	

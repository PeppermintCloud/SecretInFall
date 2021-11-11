extends Node2D

signal puzzle_solved
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var correct = false
var tracker1 = [true, false, true, false]
var tracker2 = [true, true, false, false]
var tracker3 = [true, true, false, false]
var tracker4 = [true, false, true, false]

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if correct == false:
		if !tracker1.has(false):
			if !tracker2.has(false):
				if !tracker3.has(false):
					if !tracker4.has(false):
						correct = true
						emit_signal("puzzle_solved")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_puzzlePiece_frame_changed(x):
	if correct == false:
		if x / 4 < 1:
			tracker1[x] = !tracker1[x]
		elif x/4 < 2:
			tracker2[x-4] = !tracker2[x-4]
		elif x/4 < 3:
			tracker3[x-8] = !tracker3[x-8]
		else:
			tracker4[x-12] = !tracker4[x-12]


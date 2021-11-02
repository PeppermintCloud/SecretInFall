extends Camera2D

onready var player = get_node("/root/Garden/KinematicBody2D")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	
	position.x = player.position.x 
	position.y = player.position.y

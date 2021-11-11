extends AnimatedSprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var playerSprite = get_node("/root/Garden/KinematicBody2D/CollisionShape2D")
export var correct = false

func _ready():
	var n = get_node("/root/Garden/Puzzle")
	n.connect("puzzle_solved", self, "_on_Node2D_puzzle_solved")

func _on_Area2D_body_entered(body):
	changeFrame()
 

func changeFrame():
	if correct == false:
		if(self.frame == 1):
			self.frame = 0
		else:
			self.frame = 1

#func _physics_process(delta):
	
func _on_Node2D_puzzle_solved():
	correct = true

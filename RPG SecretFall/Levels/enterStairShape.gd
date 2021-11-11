extends CollisionShape2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Stairs_activate_stairs():
	self.set_deferred("disabled", !self.disabled)
	print("enterStairShape check")

func _on_Area2D_body_entered(body):
	self.set_deferred("disabled", !self.disabled)
	print("enter stair check")

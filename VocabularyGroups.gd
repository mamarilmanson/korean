extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func SetLabels(leftlabel, rightlabel):
	get_node("LeftLabel").set_text(leftlabel)
	get_node("RightLabel").set_text(rightlabel)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

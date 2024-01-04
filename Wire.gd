extends Node2D

var on = false
@onready var source = get_node(get_meta("Source"))

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if source.on:
		on = true
		get_node("wireOff/wireOn").show_behind_parent= false
	else:
		on = false
		get_node("wireOff/wireOn").show_behind_parent= true

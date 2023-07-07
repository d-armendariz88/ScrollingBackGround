extends Node2D

@onready var mountain1 = $Mountain1
@onready var mountain2 = $Mountain2
@onready var mountain3 = $Mountain3
@onready var mountain4 = $Mountain4
@onready var erasePoint = $ErasePoint

var mountains = []
# Called when the node enters the scene tree for the first time.
func _ready():
	mountains = [mountain1,mountain2,mountain3,mountain4]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(mountains[0].position.x<=erasePoint.position.x):
		switch_mountain_position()
func switch_mountain_position():
	var last_element = mountains.pop_front()
	last_element.position.x=mountains[mountains.size()-1].position.x+800
	last_element.change_sprite()
	mountains.push_back(last_element)

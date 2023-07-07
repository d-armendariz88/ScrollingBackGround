extends Node2D

@onready var sprite =$Sprite2D
@export var speed = 800
@onready var spawn_point = $SpawPoint
# Called when the node enters the scene tree for the first time.
func _ready():
	change_sprite()

func _process(delta):
	position.x-= speed * delta

func change_sprite():
	var rng = RandomNumberGenerator.new()
	sprite.frame = rng.randi_range(1,5)

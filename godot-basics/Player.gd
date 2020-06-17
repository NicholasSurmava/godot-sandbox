extends KinematicBody2D

var score : int = 0

var speed : int = 200
var jumpForce : int = 600
var gravity : int = 800
var vel : Vector2 = Vector2()

onready var sprite : Sprite = get_node("blue-blob")

func _physics_process(delta):
	vel.x = 0
	
	# Player movement will be defined here
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
	if Input.is_action_pressed("ui_right"):
		vel.x += speed
		
	#	applying the velocity
	vel = move_and_slide(vel, Vector2.UP)
	
	#	gravity
	vel.y += gravity * delta
	
	#	jump input
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		vel.y -= jumpForce
	
	# sprite direction
	if vel.x > 0:
		sprite.flip_h = true
	elif vel.x < 0:
		sprite.flip_h = false

func _ready():
	print(sprite)

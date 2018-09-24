extends KinematicBody2D

var velocity = Vector2()
var bounces = 0;
var speed = 5;
var initPos = Vector2()

func _ready():
	initPos = position;

func _reset():
	position = initPos;
	bounces = 0;
	velocity = Vector2()

func _physics_process(delta):
	var oldVelocity = velocity;
	if(velocity.y == 0 and velocity.x == 0):
		var angle = randf()
		var plusx = 1
		if(randi() % 1 == 0):
			plusx = -1
		var plusy = 1
		if(randi() % 1 == 0):
			plusy = -1
			
		velocity.y = angle * speed * plusy * 80
		velocity.x = (1-angle) * speed * plusx * 80
		
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.normal)
		bounces += 1
		velocity.x = UpdateSpeed(velocity.x)
		velocity.y = UpdateSpeed(velocity.y)
		var angle = oldVelocity.angle_to_point(velocity)
		rotate(angle)

	pass
	
func UpdateSpeed(val):
	var cof = 1
	if val < 0:
		cof = -1
	
	return val + pow(bounces, 3)/pow(bounces,2) * cof
	

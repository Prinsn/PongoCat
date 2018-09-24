extends KinematicBody2D

var motion = Vector2()

const SPEED = 100
const MAX_SPEED = 500
const FRICTION = 10
var ai = false

func _physics_process(delta):
	var aiUp = false
	var aiDown = false
		
	motion.x = 0;
		
	if (ai):
		var aiAction = randi() %100
		if aiAction < 30:
			aiUp = true;
		elif aiAction > 69:
			aiDown = true;
		
	if aiUp or (!ai and Input.is_action_pressed("ui_up")):
		motion.y += -SPEED
		if motion.y < -MAX_SPEED: 
			motion.y = -MAX_SPEED
		
	elif aiDown or (!ai and Input.is_action_pressed("ui_down")):
		motion.y += SPEED
		if motion.y > MAX_SPEED: 
			motion.y = MAX_SPEED
	#friction
	elif motion.y > 0:
		motion.y -= FRICTION
		if motion.y < 0:
			motion.y = 0
	elif motion.y < 0:
		motion.y += FRICTION
		if motion.y > 0:
			motion.y = 0
	
	motion = move_and_slide(motion);
			
	pass
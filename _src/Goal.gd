extends Area2D

var side = "";
var ball;

func init():
	connect("body_entered", self, "on_body_entered")
	ball = get_parent().get_node("Ball");

func on_body_entered( body ):
	if body == ball:
		if side == "left":
			emit_signal("goalLeft")
		elif side == "right":
			emit_signal("goalRight")
		ball._reset();
extends LineEdit

var nodePath
var sig
var goal
var score = 0;

func init():
	goal = get_parent().get_node(nodePath)
	goal.connect(sig, self, "_update_score")

func _update_score():
	print("Score against: " + nodePath);
	score += 1
	text = str(score)
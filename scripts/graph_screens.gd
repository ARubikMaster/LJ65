extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var change = Global.data[Global.data.size()-1] - Global.data[Global.data.size()-2]
	if (change > 0):
		$Footer/Stonks.visible = true
		$Footer/NotStonks.visible = false
		$Textbox/Label.text = "Told you so!"
	elif (change < 0):
		$Footer/Stonks.visible = false
		$Footer/NotStonks.visible = true
		$Textbox/Label.text = "We don't talk about this..."
	else:
		$Footer/Stonks.visible = false
		$Footer/NotStonks.visible = false
		$Textbox/Label.text = "Morality calls this a draw."
		
	$Footer/Label.text = "Selected Idea: \n\n" + Global.selectedIdea

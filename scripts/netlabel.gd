extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var size = Global.data.size()
	text = "NET: $" + str(Global.data[size-1]) + " CHANGE: $" + str(Global.data[size-1]-Global.data[size-2])

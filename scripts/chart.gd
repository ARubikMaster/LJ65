extends ColorRect

var line_color = Color.GREEN
var line_width: float = 3.0

func _ready():
	queue_redraw()

func _draw():
	if (Global.data.is_empty()):
		return
	
	var points = PackedVector2Array()
	var graph_size = size
	var max_value = Global.data.max()
	var x_step = size.x / (Global.data.size() - 1)
	
	for i in range(Global.data.size()):
		var x = i * x_step
		var y = graph_size.y - (float(Global.data[i]) / max_value) * graph_size.y
		points.append(Vector2(x, y))
		
		draw_circle(Vector2(x, y), 4.0, line_color)
	
	if (points.size() > 1):
		draw_polyline(points, line_color, line_width, true)

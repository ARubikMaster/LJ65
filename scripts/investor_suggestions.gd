extends Node2D
@onready var item_list: ItemList = $ItemList
const SUGGESTIONS = preload("res://scripts/Suggestions.txt")

const Suggestions = SUGGESTIONS

var Currentsuggestions = [["Salmon Altman","Integrating OceanAI's ChartGPT 5.2 into the search engine"],["Investor Joe","Lay off 2000 employees"]]

func _ready() -> void:
	writeSuggestions()

func writeSuggestions() :
	item_list.clear()
	for x in Currentsuggestions.size() :
		for y in Currentsuggestions[x].size() :
			item_list.add_item(Currentsuggestions[x][y],null,y == 1)
			if y == 0 :
				item_list.set_item_disabled(x*2+y, true)

extends CanvasLayer

func _ready():
	$Control/TextureRect/HBoxContainer/LifeCount.text = "3"


func update_GUI(lives_left, coins):#GDScript is based on python, doesn't care what this value is called elsewhere
	$Control/TextureRect/HBoxContainer/LifeCount.text = str(lives_left)
	$Control/TextureRect/HBoxContainer/CoinCount.text = str(coins)

extends Node2D

var timeout = false

func _process(delta):
	if $Sprite/RayCast2D.is_colliding():
		fire()


func fire():
	if not timeout:
		$Sprite/RayCast2D.add_child(load("res://Lightning.tscn").instance())
	#Load a scene, but load a copy as a node in this tree(Sprite)
		$Sprite/Timer.start()
		timeout = true

func _on_Timer_timeout():
	timeout = false

extends Node

var Cherry = preload("res://Collectables/cherry.tscn")

func _on_timer_timeout():
	
	var cherryTemp = Cherry.instantiate()
	var rng = RandomNumberGenerator.new()
	var randint = rng.randi_range(10,400)
	cherryTemp.position = Vector2(randint, 300)
	add_child(cherryTemp)

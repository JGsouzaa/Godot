extends Area2D



func _on_body_entered(body):
	if body.name == "Player":
		Game.Gold += 5
		var tweenpos = get_tree().create_tween()
		var tweenmod = get_tree().create_tween()
		tweenpos.tween_property(self, "position", position - Vector2(0,15), 0.1)
		tweenmod.tween_property(self, "modulate:a", 0, 0.3)
		tweenpos.tween_callback(queue_free)

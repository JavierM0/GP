extends Area2D

signal gem_collected

func _on_Gem_body_entered(body):
	$AnimationPlayer.play("Bounce")
	Global.gems = Global.gems + 15
	set_collision_layer_bit( 0, false )	
	emit_signal("gem_collected")

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()

extends Node2D

func _on_toField_body_entered(body):
	get_tree().change_scene("res://Fieldb.tscn")

func _on_Gem_gem_collected():
	$HUD._ready()

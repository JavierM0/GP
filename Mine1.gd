extends Node2D

func _on_ToField_body_entered(body):
	get_tree().change_scene("res://Fieldc.tscn")

extends Node2D

func _ready():
	pass 

func _on_ToCastle_body_entered(body):
	get_tree().change_scene("res://LevelCastle1.tscn")

func _on_ToMine_body_entered(body):
	get_tree().change_scene("res://Mine1.tscn")

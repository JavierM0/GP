extends CanvasLayer

func _ready():
	$Panel/Coins.text = String(Global.gems)

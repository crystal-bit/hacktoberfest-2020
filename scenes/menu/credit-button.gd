extends Button

onready var audio = get_node("../AudioStreamPlayer")


func _on_CreditButton_pressed():
	audio.play()
	yield(audio, "finished")
	Game.change_scene("res://scenes/credits.tscn")

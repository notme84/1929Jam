extends Button

@onready var Timeline

func _on_pressed():
	Dialogic.start("res://timelines/GameIntro.dtl")

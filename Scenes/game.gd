extends Node2D

@export var Timeline : DialogicTimeline

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)
	Dialogic.start(Timeline.resource_path)	

func _on_dialogic_signal(argument: String):
	if argument == "introEnded":
		print("Toggle is ", Dialogic.VAR.Toggle)
		print("Count is ", Dialogic.VAR.Count)
		Dialogic.VAR.Count += 3
		print("Count is ", Dialogic.VAR.Count)
		print(argument)
	elif argument == "mainMenu":
		get_tree().change_scene_to_file("res://Scenes/Menu/MainMenu.tscn")

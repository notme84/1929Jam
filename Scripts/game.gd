extends Node2D

@export var Timeline : DialogicTimeline

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)
	Dialogic.start(Timeline.resource_path)	
	print("Toggle is ", Dialogic.VAR.Toggle)
	print("Count is ", Dialogic.VAR.Count)
	

func _on_dialogic_signal(argument: String):
	#REMINDER dialogic2 finish signal logic before continuing timeline
	if argument == "introEnded":
		print(argument)
		print("Count is ", Dialogic.VAR.Count)
		Dialogic.VAR.Count += 1
		print("Count is ", Dialogic.VAR.Count)
	elif argument == "choiceCount":
		print(argument)
		print("Count is ", Dialogic.VAR.Count)
	elif argument == "mainMenu":
		print(argument)
		get_tree().change_scene_to_file("res://Scenes/Menu/MainMenu.tscn")
	else:
		print(argument)
		print("Count is ", Dialogic.VAR.Count)

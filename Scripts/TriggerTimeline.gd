extends Button

@export var Timeline : DialogicTimeline

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_pressed():
	Dialogic.start(Timeline.resource_path)

func _on_dialogic_signal(argument: String):
	if argument == "introEnded":
		print(argument)

extends Button

@export var Timeline : DialogicTimeline

func _on_pressed():
	Dialogic.start(Timeline.resource_path)

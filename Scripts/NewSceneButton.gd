extends Button

@export var newScene : PackedScene

func _on_pressed():
	if(!newScene):
		print("NO Scene")
		return

	get_tree().change_scene_to_file(newScene.resource_path)

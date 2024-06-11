@tool
extends Node3D

const ITERATIONS = 1000

@export var mesh_instance_scene: PackedScene
@export var sprite3d_scene: PackedScene

func _process(delta: float) -> void:
	if Engine.is_editor_hint():
		return

	$FPSLabel.text = "%d FPS (%.2f mspf)" % [Engine.get_frames_per_second(), 1000.0 / Engine.get_frames_per_second()]
	$CountLabel.text = "%d Meshes %d Sprites" % [$Meshes.get_child_count(), $Sprites.get_child_count()]




func _on_spawn_mesh_button_pressed():
	for i in ITERATIONS:
		var mesh := mesh_instance_scene.instantiate()
		$Meshes.add_child(mesh)


func _on_spawn_sprites_button_pressed():
	for i in ITERATIONS:
		var sp := sprite3d_scene.instantiate()
		$Sprites.add_child(sp)

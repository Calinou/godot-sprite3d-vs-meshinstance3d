@tool
extends Node3D

const ITERATIONS = 1000


func _ready() -> void:
	for i in ITERATIONS:
		var mesh := $Meshes/MeshInstance3D.duplicate()
		$Meshes.add_child(mesh)

		var sprite := $Meshes/MeshInstance3D.duplicate()
		$Sprites.add_child(sprite)


func _process(delta: float) -> void:
	if Engine.is_editor_hint():
		return

	$FPSLabel.text = "%d FPS (%.2f mspf)" % [Engine.get_frames_per_second(), 1000.0 / Engine.get_frames_per_second()]

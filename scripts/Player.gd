extends Node2D

onready var _arm_right := $Body/ArmRight

func _ready() -> void:
	pass

func _process(delta : float) -> void:
	var arm_target := get_viewport().get_mouse_position()
	print(Engine.get_frames_per_second())
	self._arm_right.target_position = self._arm_right.to_local(arm_target)
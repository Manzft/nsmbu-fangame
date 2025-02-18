extends Node2D

func _process(delta: float) -> void:
	$CanvasLayer/ColorRect.material.set_shader_parameter("screen_width", $CanvasLayer/ColorRect.size.x);
	$CanvasLayer/ColorRect.material.set_shader_parameter("screen_height", $CanvasLayer/ColorRect.size.y);

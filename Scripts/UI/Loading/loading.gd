extends CanvasLayer

@export var start_menu: PackedScene

func _ready() -> void:
	$ColorRect/AnimationPlayer.play("out");
	$LoadingTextContainer/AnimationPlayer.play("idle");

func _on_destroy_timer_timeout() -> void:
	$ColorRect/AnimationPlayer.play("in");

func _on_color_rect_animation_player_animation_finished(anim_name: StringName) -> void:
	if (anim_name == "in"):
		get_tree().change_scene_to_packed(start_menu);

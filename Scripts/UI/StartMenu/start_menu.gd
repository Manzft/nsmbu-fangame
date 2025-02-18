extends CanvasLayer

@export var acornPlains1_1: PackedScene;

func _ready():
	$AnimationPlayer.play("start");
	
	#Initalize Mario Animation
	$MarioContainer/Mario.play("idle");
	
func _process(delta: float) -> void:
	$ColorRect.material.set_shader_parameter("screen_width", $ColorRect.size.x);
	$ColorRect.material.set_shader_parameter("screen_height", $ColorRect.size.y);
	#$ParallaxBackground.autoscroll.x = $Parallax2D.autoscroll.x*0.8;

func _input(event: InputEvent) -> void:
	if (Input.is_action_just_pressed("start")):
		if ($AnimationPlayer.current_animation == "idle"):
			$AnimationPlayer.play("out");

func _on_start_music_timer_timeout() -> void:
	$TitleScreenTheme.play();

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if (anim_name == "start"):
		$AnimationPlayer.play("idle");
		$MarioContainer/Mario.play("idle-walk");
	if (anim_name == "out"):
		get_tree().change_scene_to_packed(acornPlains1_1);

func _on_mario_animation_finished() -> void:
	if ($MarioContainer/Mario.animation == "idle-walk"):
		$MarioContainer/Mario.play("walk");

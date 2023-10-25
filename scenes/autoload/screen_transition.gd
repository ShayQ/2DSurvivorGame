extends CanvasLayer

signal transition_halfway

var skip_emit = false

func transition():
	$AnimationPlayer.play("default")
	await $AnimationPlayer.animation_finished
	transition_halfway.emit()
	$AnimationPlayer.play_backwards("default")


func emit_transition_halfway():
	if skip_emit:
		skip_emit = false
		return
	transition_halfway.emit()

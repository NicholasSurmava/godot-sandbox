extends Node2D

var title = "Game"

func _process(delta):
	OS.set_window_title(title + " | fps: " + str(Engine.get_frames_per_second()))

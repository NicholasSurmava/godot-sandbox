extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	var _playBtn = get_node("PlayGameBtn").connect("pressed", self, "_on_Play_game")
	var _quitBtn = get_node("QuitGameBtn").connect("pressed", self, "_on_Quit_game")
	
func _on_Quit_game():
	print("Goodbye!")
	get_tree().quit()
	
func _on_Play_game():
	var _textBanner = get_node("TextBanner")
	var message = "Dude... There's nothing to play... yet! Ha!"
	
	print(message)
	_textBanner.text = message
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

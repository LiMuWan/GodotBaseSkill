extends Node

#类的定义和单例
class TestPlayer:
	static var Instance:TestPlayer:
		get:
			if Instance == null:
				Instance = TestPlayer.new()
			return Instance

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

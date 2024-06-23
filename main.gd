extends Node3D
var s_cube:PackedScene = preload("res://cube.tscn")
var score :int = 100
var student_name : String = "name"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(s_cube.instantiate())
	print($Camera3D.name)
	get_tree().call_group("Light","group_light")
	print(get_tree().get_nodes_in_group("Light"))
	
	process()
	process_for()
	process_while()
	process_match()
	process_3yuan()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass

#if else elif

func process() -> void:
	var score = 100
	if score > 60:
		print("优秀")
	elif score > 50:
		print("中等")
	else:
		print("低等")
	pass
	
# for
func process_for() -> void:
	for p in range(50,0,-5):
		print("for p = ",p)
	pass
	
func process_while() -> void:
	var count:int = 0;
	while count < 5:
		print("count = ",count)
		count += 1
pass
# match
func process_match() -> void:
	var day = "星期五"
	match day:
		"星期日":
			print(day)
		"星期一":
			print(day)
		_:
			print("未知")
	pass

func process_3yuan() -> void:
	var score:int = 100
	var result:String = "通过" if score == 100  else "未通过" 
	print("result = ",result)
	pass

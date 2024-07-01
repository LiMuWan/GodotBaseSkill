extends Node3D
var s_cube:PackedScene = preload("res://base_skill/cube.tscn")
const CUBE_NAME:String = "res://base_skill/cube.tscn"
const PAI:float = 3.14
var score :int = 100
var student_name : String = "name"
signal my_signal

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
	process_break_continue()
	process_array()
	process_dictionary()
	process_my_func(999,"元","折扣")
	lamada_func.call("阿瑞")
	my_signal.connect(lamada_func)
	my_signal.connect(my_signal_func)
	my_signal.emit("老李啊")
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

#三元运算符
func process_3yuan() -> void:
	var score:int = 100
	var result:String = "通过" if score == 100  else "未通过" 
	print("result = ",result)
	pass

# break 跳出当前循环
# continue 跳过当前循环，进入下一次循环
func process_break_continue() -> void:
	var numbers = [1,2,3,4,5]
	print("break")
	var target = 3
	for i in numbers:
		print("当前循环到",i,"了")
		if i == target:
			print("找到目标了，目标是",target)	
			break #跳出循环
	print("continue")
	for i in numbers:
		if i%2==0:
			continue
		print(i)

# 数组
func process_array() -> void:
	var array:Array = [] #声明一个空数组
	var test_array:Array = [1,2,3,4]
	var int_array:PackedInt32Array = [1,2,3,"hello"]
	var vector2_array:PackedVector2Array = [Vector2.ZERO,"hello"]
	print("hello	",test_array[3])
	print("hello	",int_array[3])
	print("hello	",vector2_array[1])
	test_array.append(4)
	test_array.insert(3,6)
	print("test array = ",test_array)
	test_array.erase(6)
	print("test array = ",test_array)
	# 查找
	var index:int = test_array.find("hello")
	print("test array 查找值 = ",index)
	# 获取大小
	print("test array 长度 = ",test_array.size())
	# 排序
	print("test array 排序前 = ",test_array)
	test_array.sort_custom(func(a,b):return true if a > b else false)
	test_array.sort_custom(func(a,b)-> bool:return true if a > b else false)
	print("test array 排序后 = ",test_array)
	
	var sort_array:Array = [
		["阿瑞",28],
		["阿芳",32],
		["小婉",3],
	]
	
	print("sort_array 排序前 = ",sort_array)
	sort_array.sort_custom(func(a,b)->bool:return true if a[1]<b[1] else false)
	print("sort_array 排序后 = ",sort_array)
	
func process_dictionary()->void:
	# 空字典
	var empty_dic = {}
	# 定义字典
	var person_dic = {
		"小李":"李瑞",
		"小婉":"李木碗",
		"小芳":"李芳"
	}
	
	var person_dic1 = {
		"小李":["小李",28],
		"小张":["小张",30],
		"小健":["小健",35],
	}
	
	print("字典 输出 = ",person_dic)
	
	print("空字典 输出 = ",empty_dic)
	# 增
	empty_dic["小红"] = 10
	empty_dic["小平"] = 23
	print("增 empty_dic = ",empty_dic)
	# 删
	empty_dic.erase("小红")
	print("删 empty_dic = ",empty_dic)
	# 改
	empty_dic["小平"] = 50
	print("改 empty_dic = ",empty_dic)
	# 查
	print("empty_dic 是否有小红 = ",empty_dic.has("小红"))
	print("empty_dic 是否有小平 = ",empty_dic.has("小平"))
	print("empty_dic 小平的值 = ",empty_dic.小平)
	#获取所有的keys
	print("empty_dic.keys = ",empty_dic.keys())
	#获取所有的值
	print("empty_dic,values = ",empty_dic.values())
	empty_dic["小师"] = 60
	print("遍历 empty_dic")
	for key in empty_dic:
		print("key = ",key,"value = ",empty_dic[key])
	pass

"""
func
parameter1 动态类型 对于动态类型，需要方法内部进行转换，除非需求明确，否则，建议使用指定类型
parameter2 指定类型
返回值类型 尽量去指定返回值类型，保证类型的安全
方法体，执行具体的逻辑 pass 占位 return 要返回的具体的值 可以省略，或者不返回指定的内容，就是void
""" 
func process_my_func(parameter1,parameter2:String,parameter3:String = "默认值")->String:
	var str = str(parameter1) + parameter2 + parameter3
	print(str)
	return str

"""
 - 函数命名的规则
  - 函数名应以字母或下划线开头，可以包含字母、数字或下划线
   - 以下划线开头命名函数，代表这个函数为私有函数，外界不要调用，只是约定
  - 避免使用GDScript保留字作为函数名
  - 函数名应清晰描述函数的功能。使用小写字母和下划线来分割单词，例如calculate_score、reset_timer
"""
func _set_name()->void:
	pass
	
"""
匿名函数，没有名字的函数，lambda表达式，Callable类型
godot4新增
"""
var lamada_func : Callable = func(p:String)->void:
	print(p + "我是一个匿名函数")

"""
事件处理模块：信号 singnal
"""

func my_signal_func(p:String)->void:
	print(p)


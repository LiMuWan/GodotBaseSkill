extends Node3D

'''
面向对象基础Object-Oriented-Programing OOP
对象Object:类的实例，实例化：按照一个模板（class）去创建一个对象Object

面向对象三大特性：封装、继承、多态
	- 封装：是指将对象的内部状态隐藏，只暴露必要的接口给外部，以保护对象内部的完整性和安全性
	- 继承：继承允许创建基于现有类的新类，新类继承了现有类的属性和方法，并可以添加新的或修改现有的属性和方法
	- 多态：多态是指不同类的对象可以统一的接口来执行相同的操作，但可能产生不同的结果，增加了程序的扩展性和灵活性
'''

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var character:Character = Character.new()
	character.char_name = "player"
	character.take_damage(10)
	
	var enemy:Enemy = Enemy.new()
	enemy.char_name = "enemy"
	enemy.take_damage(5)
	print("attack = ",enemy.my_attack)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

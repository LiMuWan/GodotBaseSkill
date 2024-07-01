extends CharacterBody2D
class_name Character

var _health :int = 100
var char_name:String = "character"
var my_attack:int = 50:
	get:
		return my_attack + 10
	set(v):
		my_attack = v
# 属性一般写法
var attack_value:int: get = _attack_value_getter, set = _attack_value_setter

func _attack_value_getter()->int:
	return attack_value

func _attack_value_setter(v)->void:
	attack_value = v

# godot3写法
#var attack:int = 0 setget _,_p3getset

#公共方法
func take_damage(damage:int)->void:
	_health -= damage
	return

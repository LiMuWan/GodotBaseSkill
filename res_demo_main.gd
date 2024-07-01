extends Node3D

@export var res_demo:ResDemo  = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("health = ",res_demo.health,"  damage = ",res_demo.damage)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func node_demo()->void:
	var node = Node2D.new()
	self.add_child(node)
	#从节点中删除
	node.queue_free()
	#从内存中删除
	node.free()

func scene_tree_demo()->void:
	var scene_tree:SceneTree = self.get_tree()
	scene_tree.get_first_node_in_group("node")
	scene_tree.get_nodes_in_group("node")
	scene_tree.call_group("node","methodName")
	scene_tree.get_node_count()
	#退出游戏
	scene_tree.quit()
	await scene_tree.create_timer(1).timeout

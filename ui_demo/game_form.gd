extends Control
@onready var label_score: Label = %label_score
@onready var btn_deduct: Button = %btn_deduct
@onready var btn_add: Button = %btn_add
var score:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	btn_add.pressed.connect(
		func() ->void:
			_on_btn_add_click()
	) 
	btn_deduct.pressed.connect(
		func() ->void:
			_on_btn_deduct_click()
	)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func deduct_score(s:int)->void:
	score -= s

func add_score(s:int)->void:
	score += s
	
func update_score()->void:
	label_score.text = str(score)

func _on_btn_deduct_click()->void:
	deduct_score(5)
	update_score()

func _on_btn_add_click()->void:
	add_score(5)
	update_score()

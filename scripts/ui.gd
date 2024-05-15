extends CanvasLayer

@onready var label_apple = $"GridContainer/Label(Apple)";
@onready var label_pear = $"GridContainer/Label2(Pear)";
@onready var label_grapes = $"GridContainer/Label3(Grapes)";

@onready var array_labels = [label_apple, label_pear,label_grapes]
@export var main_node: Node


func _ready():
	Global.ui = self
	initial_label()


func initial_label():
	update_labels()
		
func update_labels():
	var index = 0
	
	for n in main_node.fruits.values():
		array_labels[index].text = str(n)
		index += 1
	pass
		
	#label_apple.text = str(Global.fruits.get("Apple"))
	#label_pear.text = str(Global.fruits.get("Pear"))
	#label_grapes.text = str(Global.fruits.get("Grapes"))
	pass


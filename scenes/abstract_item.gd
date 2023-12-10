extends Sprite2D
class_name AbstractItem

@onready var collision = $Area2D/CollisionShape2D
@onready var player = get_tree().current_scene.find_child("player")


var stats: Item = null:
	set(value):
		stats = value
		
		if value != null:
			texture = value.icon
			stats.connect("item_used",use_item)


func _ready():
	#testing
	stats = ItemDatabase.get_item("ThrowingAxe")


func use_item():
	print("Item Used") #testing


func _on_player_entered(body):
	if body is Player:
		body.add_item(stats)
		call_deferred("reparent",body)

extends Resource
class_name Item

@export var icon: Texture2D
@export var name: String

@export_enum("Weapon", "Armor","Potion") 
var type : String = "Weapon"

@export_enum("Common","Rare","Epic","Legendary")
var rarity: String = "Common"

@export_multiline var description: String


signal item_used


func use_item():
	item_used.emit()

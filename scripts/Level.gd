extends Node2D

onready var findableObjects : Array = $FindableObjects.get_children()
var numOfFindableObjects


func _ready() -> void:
	numOfFindableObjects = findableObjects.size()
	updateLabel()
	
	for obj in findableObjects:
		obj.connect("foundObject", self, "objectFound")


func objectFound() -> void:
	numOfFindableObjects -= 1
	updateLabel()
	checkStatus()


func checkStatus() -> void:
	if numOfFindableObjects == 0:
		winLevel()


func updateLabel() -> void:
	# Update UI Labels
	print("UI Updating...")


func winLevel() -> void:
	print("You Won!")

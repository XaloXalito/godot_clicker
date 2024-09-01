class_name PrototypeClicker
extends Control
## Clicker Prototype creating coins

## Reference to the lables displaying the current amount of coins.
@export var label : Label 

## Current amount of coins.
var coins : int = 0

## Initialize the label on launch
func _ready() -> void:
	update_label_text()

## Create Coins
func create_coins() -> void:
	coins += 1
	update_label_text()

## Trigger of creating coins.
func _on_button_pressed() -> void:
	create_coins() # Replace with function body.

## Update the text of the label ro reflect changes on coins.
func update_label_text() -> void:
	label.text = "Coins : %s" %coins

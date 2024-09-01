class_name PrototypeGenerator
extends Control
##Generator Prototype creating coins every seconds.

## Reference to the label displaying the current amoun of Coins in storage.
@export var label: Label
## Referencie to the button starting the generation.
@export var buttom: Button
## Regerencen to te timer
@export var timer: Timer
var coins : int = 0

## initialize th elabel
func _ready() -> void:
	update_label_text()

## Creates coins
func create_coins() -> void:
	coins += 1
	update_label_text()

## updates the label text whit the current amount of coins
func update_label_text() -> void:
	label.text = "Coins : %s" %coins
	
## start the timer and disable the button
func begin_generating_coins() -> void:
	timer.start()
	buttom.disabled = true

## Trigered when timer times out.
func _on_button_pressed():
	begin_generating_coins()


func _on_timer_timeout():
	create_coins()

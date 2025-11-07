extends CharacterBody2D

# Player movement settings
@export var move_speed: float = 200.0  # Pixels per second

func _physics_process(delta):
	# Get input direction
	# Input.get_vector automatically handles WASD and arrow keys
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Set the velocity based on input
	velocity = input_direction * move_speed
	
	# Move the player
	move_and_slide()

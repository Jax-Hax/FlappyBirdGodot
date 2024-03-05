extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	velocity.y += gravity * delta
	if Input.is_action_just_pressed("Jump"):
		velocity.y = JUMP_VELOCITY
	move_and_slide()


func _on_pipe_spawner_kill_player():
	visible = false;
	print("aa")

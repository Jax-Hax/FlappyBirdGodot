extends Marker2D
signal pipe_collision

var speed = 200;

func _physics_process(delta):
	global_position.x -= delta * Speed.speed


func _on_bottom_pipe_body_entered(body):
	pipe_collision.emit()


func _on_top_pipe_body_entered(body):
	pipe_collision.emit()

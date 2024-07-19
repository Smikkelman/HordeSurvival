extends Area2D

var enemy_speed = 200
var enemy_health = 100
var enemy_damage = 100
signal enemy_collision


func _ready():
	position = Vector2(500,500)


func _process(delta):
	#(player posx.y - enemy posx.y) x200,y300
	position += (PlayerCharacter.position - EnemyCharacter.position).normalized()*enemy_speed*delta
	

func _on_body_entered(_body):
	print("enemy geraakt")
	enemy_collision.emit()
	await get_tree().create_timer(1.0).timeout
		
	



func _on_level_body_entered():
	print("enemy neer")
	# Replace with function body.

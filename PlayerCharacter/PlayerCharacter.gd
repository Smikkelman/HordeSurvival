extends CharacterBody2D

var player_speed = 300
var player_health = 500
var player_damage = 100
signal body_entered(body: Node2D)


func _ready():
	position = Vector2(0,0)
	
func _get_input():
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * player_speed
	
func _physics_process(_delta):
	_get_input()
	move_and_slide()

func _on_enemy_character_enemy_collision():
	
	PlayerCharacter.player_health -= 1 * EnemyCharacter.enemy_damage
	print(PlayerCharacter.player_health)
	print("pinda")
	await get_tree().create_timer(1.0).timeout



	


	
	
	
#func _timer():
	#await get_tree().create_timer(1.0).timeout
	#queue_free()
	
	
	#timer.wait_time = 1.0
	#timer.one_shot = true
	#timer.autostart = true
	#timer.connect("timeout",timer,0)
	#add_child(timer)

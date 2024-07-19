extends Node2D
signal enemy_collision
signal body_entered


func _ready():
	var enemy_spawn = load("res://Horde survival exp1/PlayerCharacter/EnemyCharacter.tscn")
	var enemy = enemy_spawn.instantiate()
	$Enemies.add_child(enemy)
	#enemy.connect('collision',_on_enemy_collision)



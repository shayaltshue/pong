extends Node2D

@onready var player_score_label: Label = $"UI/Player Score Label"
@onready var enemy_score_label: Label = $"UI/Enemy Score Label"
@onready var ball: CharacterBody2D = $Ball

var player_score: int = 0
var enemy_score: int = 0

func _ready() -> void:
	player_score_label.set_text(str(player_score))
	enemy_score_label.set_text(str(enemy_score))

func _on_player_goal_body_entered(body):
	if body.name == "Ball":
		enemy_score += 1
		enemy_score_label.set_text(str(enemy_score))
		scored()

func _on_enemy_goal_body_entered(body):
	if body.name == "Ball":
		player_score += 1
		player_score_label.set_text(str(player_score))
		scored()

func scored():
	ball.reset()

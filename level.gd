extends Node2D

var oponente_count = 0
var player_count = 0

func _ready():
	_reset_game()

func _reset_game():
	$Ball.put_in_center()
	# $Ball.reset_ball()
	$RestartTimer.start();

func _on_arco_player_body_entered(body):
	if body.name == "Ball":
		oponente_count += 1
		_actualizar_marcador()
		_reset_game()

func _on_arco_oponente_body_entered(body):
	if body.name == "Ball":
		player_count += 1
		_actualizar_marcador()
		_reset_game()

func _actualizar_marcador():
	var text = str(player_count) + " - " + str(oponente_count)
	$MarcadorPlayer.text = text

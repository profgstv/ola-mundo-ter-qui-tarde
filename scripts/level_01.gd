extends Node2D

func _ready() -> void:
	Global.criar_dialogo(
		"Ola Mundo",
		"Sejam bem vindos. Para andar no mapa utilize as setas direcionais do teclado/gamestick. Aproveite!",
		["Ok."],
		[func(): Global.destruir_dialogo()],
		get_node(".")
	)
	pass

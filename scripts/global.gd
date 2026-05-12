extends Node

const INSTANCIA_DIALOGO: PackedScene = preload("res://scenes/templates/dialogo.tscn")

var dialogo: CanvasLayer = INSTANCIA_DIALOGO.instantiate()

func criar_dialogo(titulo: String, mensagem: String, nome_botoes: Array[String], func_botoes: Array[Callable], node_atual: Node) -> void:
	dialogo.titulo = titulo
	dialogo.mensagem = mensagem
	dialogo.nome_botoes = nome_botoes
	dialogo.func_botoes = func_botoes
	node_atual.add_child(dialogo)
	dialogo_esta_ativo = true
	pass

var dialogo_esta_ativo: bool = false

func destruir_dialogo() -> void:
	dialogo_esta_ativo = false
	dialogo.queue_free()
	pass

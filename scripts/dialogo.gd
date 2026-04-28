extends CanvasLayer

var titulo: String = "Olá Mundo!"
var mensagem: String = "Estamos na Fabrica de Cultura."
var nome_botoes: Array[String] = ["Ok", "Tá", "Blz"]
var func_botoes: Array[Callable] = [
	func(): print("Botão 'OK' Apertado"),
	func(): print("Botão 'Tá' Apertado"),
	func(): print("Botão 'Blz' Apertado")
]

@onready var titulo_label: Label = $Panel/TituloLabel
@onready var mensagem_label: RichTextLabel = $Panel/MensagemLabel
@onready var h_box_container: HBoxContainer = $Panel/HBoxContainer
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

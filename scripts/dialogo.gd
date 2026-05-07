extends CanvasLayer


var mostrar_mensagem: bool = false
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
	titulo_label.text = titulo
	mensagem_label.text = mensagem
	for index in nome_botoes.size():
		h_box_container.add_child(Button.new())
		h_box_container.get_child(index).text = nome_botoes[index]
		h_box_container.get_child(index).size_flags_horizontal = 3
		pass

func _process(delta: float) -> void:
	if mostrar_mensagem and mensagem_label.visible_ratio < 1:
		mensagem_label.visible_characters += int(100 * delta)
		pass

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "start":
		mostrar_mensagem = true
		pass

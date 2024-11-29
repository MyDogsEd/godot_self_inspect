@tool
extends EditorPlugin

var dock: Node

func _enter_tree() -> void:
	add_tool_menu_item("Self Tree Inspector", func(): 
		dock = preload("res://addons/self_inspect/custom_tree_inspector.tscn").instantiate();
		EditorInterface.get_base_control().add_child(dock)
		)

func _exit_tree() -> void:
	remove_tool_menu_item("Self Tree Inspector")
	dock.free()

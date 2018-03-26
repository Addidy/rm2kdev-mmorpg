/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EFB449A
/// @DnDArgument : "code" "if(focused){$(13_10)	$(13_10)	if(keyboard_key == vk_backspace){$(13_10)		text = string_copy(text, 0, string_length(text) - 1);$(13_10)	} else {$(13_10)		text += keyboard_lastchar$(13_10)	}$(13_10)	$(13_10)}"
if(focused){
	
	if(keyboard_key == vk_backspace){
		text = string_copy(text, 0, string_length(text) - 1);
	} else {
		text += keyboard_lastchar
	}
	
}
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B33106D
/// @DnDArgument : "code" "event_inherited();$(13_10)$(13_10)if(string_length(txt_Username.text) > 0 && string_length(txt_Password.text) > 0){$(13_10)	var register_packet = buffer_create(1, buffer_grow,1);$(13_10)	buffer_write(register_packet, buffer_string, "register");$(13_10)	buffer_write(register_packet, buffer_string, txt_Username.text);$(13_10)	buffer_write(register_packet, buffer_string, txt_Password.text);$(13_10)	$(13_10)	network_write(Network.socket, register_packet);$(13_10)} else{$(13_10)	show_message("Error: username or password cannot be blank...");$(13_10)}"
event_inherited();

if(string_length(txt_Username.text) > 0 && string_length(txt_Password.text) > 0){
	var register_packet = buffer_create(1, buffer_grow,1);
	buffer_write(register_packet, buffer_string, "register");
	buffer_write(register_packet, buffer_string, txt_Username.text);
	buffer_write(register_packet, buffer_string, txt_Password.text);
	
	network_write(Network.socket, register_packet);
} else{
	show_message("Error: username or password cannot be blank...");
}
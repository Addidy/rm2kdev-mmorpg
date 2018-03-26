/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D209E68
/// @DnDArgument : "code" "event_inherited();$(13_10)$(13_10)if(string_length(txt_Username.text) > 0 && string_length(txt_Password.text) > 0){$(13_10)	var login_packet = buffer_create(1, buffer_grow,1);$(13_10)	buffer_write(login_packet, buffer_string, "login");$(13_10)	buffer_write(login_packet, buffer_string, txt_Username.text);$(13_10)	buffer_write(login_packet, buffer_string, txt_Password.text);$(13_10)	$(13_10)	network_write(Network.socket, login_packet);$(13_10)} else{$(13_10)	show_message("Error: username or password cannot be blank...");$(13_10)}"
event_inherited();

if(string_length(txt_Username.text) > 0 && string_length(txt_Password.text) > 0){
	var login_packet = buffer_create(1, buffer_grow,1);
	buffer_write(login_packet, buffer_string, "login");
	buffer_write(login_packet, buffer_string, txt_Username.text);
	buffer_write(login_packet, buffer_string, txt_Password.text);
	
	network_write(Network.socket, login_packet);
} else{
	show_message("Error: username or password cannot be blank...");
}
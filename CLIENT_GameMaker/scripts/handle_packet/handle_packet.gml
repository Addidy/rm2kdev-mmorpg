/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 366FDF1E
/// @DnDArgument : "code" "//argument0: data buffer$(13_10)var command = buffer_read(argument0, buffer_string);$(13_10)show_debug_message("Networking Event: " + string(command));$(13_10)$(13_10)switch(command){$(13_10)	case "HELLO":$(13_10)		server_time = buffer_read(argument0, buffer_string);$(13_10)		room_goto_next();$(13_10)		show_debug_message("Server welcomes you @ " + server_time);$(13_10)		break;$(13_10)}"
//argument0: data buffer
var command = buffer_read(argument0, buffer_string);
show_debug_message("Networking Event: " + string(command));

switch(command){
	case "HELLO":
		server_time = buffer_read(argument0, buffer_string);
		room_goto_next();
		show_debug_message("Server welcomes you @ " + server_time);
		break;
}
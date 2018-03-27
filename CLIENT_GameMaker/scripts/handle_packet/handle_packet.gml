/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 366FDF1E
/// @DnDArgument : "code" "//argument0: data buffer$(13_10)var command = buffer_read(argument0, buffer_string);$(13_10)show_debug_message("Networking Event: " + string(command));$(13_10)$(13_10)switch(command){$(13_10)	case "HELLO":$(13_10)		server_time = buffer_read(argument0, buffer_string);$(13_10)		room_goto_next();$(13_10)		show_debug_message("Server welcomes you @ " + server_time);$(13_10)		break;$(13_10)		$(13_10)	case "LOGIN":$(13_10)		status = buffer_read(argument0, buffer_string)$(13_10)		if(status == "TRUE"){$(13_10)			target_room = buffer_read(argument0, buffer_string);$(13_10)			target_x = buffer_read(argument0, buffer_u16);$(13_10)			target_y = buffer_read(argument0, buffer_u16);$(13_10)			name = buffer_read(argument0, buffer_string);$(13_10)			$(13_10)			goto_room = asset_get_index(target_room);$(13_10)			room_goto(goto_room);$(13_10)			$(13_10)			//Initiate a player object... on this room.$(13_10)		}else{$(13_10)			show_message("Login Failed: User Doesnt Exist Or Password Incorrect.");$(13_10)		}$(13_10)		break;$(13_10)		$(13_10)	case "REGISTER":$(13_10)		status = buffer_read(argument0, buffer_string)$(13_10)		if(status == "TRUE"){$(13_10)			show_message("Register Success: Please Login.")$(13_10)		}else{$(13_10)			show_message("Register Failed: Username Taken.")$(13_10)		}$(13_10)		break;$(13_10)}"
//argument0: data buffer
var command = buffer_read(argument0, buffer_string);
show_debug_message("Networking Event: " + string(command));

switch(command){
	case "HELLO":
		server_time = buffer_read(argument0, buffer_string);
		room_goto_next();
		show_debug_message("Server welcomes you @ " + server_time);
		break;
		
	case "LOGIN":
		status = buffer_read(argument0, buffer_string)
		if(status == "TRUE"){
			target_room = buffer_read(argument0, buffer_string);
			target_x = buffer_read(argument0, buffer_u16);
			target_y = buffer_read(argument0, buffer_u16);
			name = buffer_read(argument0, buffer_string);
			
			goto_room = asset_get_index(target_room);
			room_goto(goto_room);
			
			//Initiate a player object... on this room.
		}else{
			show_message("Login Failed: User Doesnt Exist Or Password Incorrect.");
		}
		break;
		
	case "REGISTER":
		status = buffer_read(argument0, buffer_string)
		if(status == "TRUE"){
			show_message("Register Success: Please Login.")
		}else{
			show_message("Register Failed: Username Taken.")
		}
		break;
}
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19EDF791
/// @DnDArgument : "code" "switch(async_load[? "type"]){$(13_10)	case network_type_data:$(13_10)		buffer_copy(async_load[? "buffer"], 0, async_load[? "size"], savedbuffer, buffer_tell(savedbuffer));$(13_10)		buffer_seek(savedbuffer, buffer_seek_relative, async_load[? "size"] + 1)$(13_10)		$(13_10)		while (true){$(13_10)			var size = buffer_peek(savedbuffer, reading, buffer_u8);$(13_10)			if (buffer_get_size(savedbuffer) >= reading + size){$(13_10)				$(13_10)				buffer_copy(savedbuffer, reading, size, cutbuffer, 0);$(13_10)				buffer_seek(cutbuffer, 0, 1);$(13_10)				$(13_10)				handle_packet(cutbuffer);$(13_10)				$(13_10)				if(buffer_get_size(savedbuffer) != reading+size){$(13_10)					reading += size;$(13_10)				} else {$(13_10)					buffer_resize(savedbuffer, 1);$(13_10)					reading = 0;$(13_10)					break;$(13_10)				}$(13_10)				$(13_10)			} else {$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)		break;$(13_10)}"
switch(async_load[? "type"]){
	case network_type_data:
		buffer_copy(async_load[? "buffer"], 0, async_load[? "size"], savedbuffer, buffer_tell(savedbuffer));
		buffer_seek(savedbuffer, buffer_seek_relative, async_load[? "size"] + 1)
		
		while (true){
			var size = buffer_peek(savedbuffer, reading, buffer_u8);
			if (buffer_get_size(savedbuffer) >= reading + size){
				
				buffer_copy(savedbuffer, reading, size, cutbuffer, 0);
				buffer_seek(cutbuffer, 0, 1);
				
				handle_packet(cutbuffer);
				
				if(buffer_get_size(savedbuffer) != reading+size){
					reading += size;
				} else {
					buffer_resize(savedbuffer, 1);
					reading = 0;
					break;
				}
				
			} else {
				break;
			}
		}
		break;
}
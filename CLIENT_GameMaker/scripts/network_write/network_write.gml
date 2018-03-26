/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F0053DE
/// @DnDArgument : "code" "//argument0: socket$(13_10)//argument1: buffer of data to send$(13_10)$(13_10)//initialize$(13_10)var packetSize = buffer_tell(argument1);$(13_10)var buffPacket = buffer_create(1, buffer_grow, 1);$(13_10)$(13_10)//Write the size, and the packet... into new buffer$(13_10)buffer_write(buffPacket, buffer_u8, packetSize + 1);$(13_10)buffer_copy(argument1, 0, packetSize, buffPacket, 1);$(13_10)buffer_seek(buffPacket, 0, packetSize + 1);$(13_10)$(13_10)//Send the packet$(13_10)network_send_raw(argument0, buffPacket, buffer_tell(buffPacket));$(13_10)$(13_10)//Destroy the buffers$(13_10)buffer_delete(argument1);$(13_10)buffer_delete(buffPacket);$(13_10)"
//argument0: socket
//argument1: buffer of data to send

//initialize
var packetSize = buffer_tell(argument1);
var buffPacket = buffer_create(1, buffer_grow, 1);

//Write the size, and the packet... into new buffer
buffer_write(buffPacket, buffer_u8, packetSize + 1);
buffer_copy(argument1, 0, packetSize, buffPacket, 1);
buffer_seek(buffPacket, 0, packetSize + 1);

//Send the packet
network_send_raw(argument0, buffPacket, buffer_tell(buffPacket));

//Destroy the buffers
buffer_delete(argument1);
buffer_delete(buffPacket);
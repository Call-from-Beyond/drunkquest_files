//----- MOVIMENTAÇÃO CAMERA JOGADOR -----//

if not instance_exists(cam_target) exit;

x = lerp(x, cam_target.x, 0.1);
y = lerp(y, cam_target.y-cam_height/4, 0.1);

camera_set_view_pos(view_camera[0], x-cam_width/2, y-cam_height/4);



//----- MODOS DA ROOM -----//

var reset = keyboard_check_pressed(ord("R"));
//var roomchange = keyboard_check_pressed(ord("C"));

if (reset) {
	room_restart(); 
}

//if (roomchange) {
//	room_goto_next()
//}

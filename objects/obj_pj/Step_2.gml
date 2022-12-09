//------ MOVIMENTAÇÃO AVANÇADA ------//

if (place_meeting(x + vel_h, y, obj_colisor)) {

	while(!place_meeting(x + sign(vel_h), y, obj_colisor)) {
		x += sign(vel_h);	
	}	
	vel_h = 0;
} 

x += vel_h;

if (place_meeting(x, y + vel_v, obj_colisor)) {

	while(!place_meeting(x, y + sign(vel_v), obj_colisor)) {
		y += sign(vel_v);
	}
	vel_v = 0;
}

y += vel_v;
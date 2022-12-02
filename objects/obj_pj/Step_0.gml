//----- MOVIMENTAÇÃO E COLISÃO -----//

var ground = place_meeting(x, y + 1, obj_colisor);
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var jumping = keyboard_check(vk_space) || keyboard_check(ord("W"));
var adv_h = (right - left)*vel_h_max;
var crouch = keyboard_check(ord("S"));
var attack = keyboard_check_pressed(ord("J"));

var onStairs = place_meeting(x, y, obj_interativo);
var upStairs = false;


//----- CONDIÇÕES -----//
var spike = place_meeting(x, y + 1, obj_spike);
var time = 1;

if (onStairs) {
	if (keyboard_check(ord("W"))) {
		upStairs = true;
	}
}

if (upStairs == true ) {
	y -= vel_stairs;
	grav = 0;
}

	if !onStairs {
		upStairs = false;
		grav = 0.4;
	}



vel_h = lerp(vel_h,adv_h,vel);

if (abs(vel_h)) < 0.5 {
	vel_h = 0;
}

if (keyboard_lastkey == ord("A")) {
	image_xscale = 1;	
}

else if (keyboard_lastkey == ord("D")) {
	image_xscale = -1;	
}

if (!ground) {

	vel = vel_air;
	vel_v += grav;	
	
}

else {
	if (vel_h == 0) {
	sprite_index = spr_pj_idle;
}

else if (vel_h != 0) {
	sprite_index = spr_pj_run;
}
	vel = vel_ground;

}

if (ground && jumping =! upStairs) {

	vel_v -= jump;
	sprite_index = spr_pj_jumping;

}

vel_h = clamp(vel_h, -vel_h_max, vel_h_max);


if (spike) {
	global.hp -= 3;
	vel_h += 10;
} 

if (global.hp < 0) {
	instance_destroy();
	room_restart();
}

if (global.alcohol <= 0 && alarm_get(0) == -1){
	global.hp -= 10;
	alarm[0] = room_speed*1;
}

if (global.alcohol > 0.0) {
	global.alcohol -= time/287;
	//global.alcohol -= time/5;
}

if (crouch){
	
sprite_index = spr_pj_abaixado;	
vel_h = 0;
vel_v = 8;

}

if (attack) && place_meeting(x,y,obj_enemy){
	
global.hp_enemy -= damage;
	
}

if global.hp_enemy <= 0 {
	
instance_destroy(obj_enemy)	
	
}

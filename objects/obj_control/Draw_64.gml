//------ VARIÁVEIS ------//

var sprHPw = sprite_get_width(spr_health);
var sprHPh = sprite_get_height(spr_health);
var hp_percent = global.hp/global.hp_max;

var sprALCw = sprite_get_width(spr_alcoholmeter);
var sprALCh = sprite_get_height(spr_alcoholmeter);
var alc_percent = (global.alcohol/global.alcohol_max)*100;

var sprPWRw = sprite_get_width(spr_power);
var sprPWRh = sprite_get_height(spr_power);
var pwr_percent = (global.pwr/global.pwr_max)*100;

//draw_text(113, 90, global.hp);
//draw_text(113, 120, global.alcohol);
//draw_text(113, 200, timer);
draw_text(178, 250, "FPS : " + string(fps));




//------ HUD GERAL ------//

draw_sprite_stretched(spr_hud, 0, 43, 40, 375, 120);



//------ VIDA ------//

draw_sprite_stretched(spr_health, 0, 178, 51, (sprHPw*3.75)*hp_percent, sprHPh*3.8);



//------ ÁLCOOLMETRO ------//

draw_sprite_stretched(spr_alcoholmeter, 0, 178, 90, (sprALCw/26.75)*alc_percent, sprALCh*3.8);


//------ ESPECIAL ------//

draw_sprite_stretched(spr_power, 0, 178, 125, (sprPWRw/26.75)*pwr_percent, sprPWRh*3.8);
//----- VARIÁVEIS -----//

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
draw_text(113, 110, "FPS : " + string(fps));




//----- HUD GERAL -----//

//draw_sprite_stretched(spr_hud, 0, 23, 20, 250, 80);



//----- VIDA -----//

draw_sprite_stretched(spr_health, 0, 113, 27, (sprHPw*2.5)*hp_percent, sprHPh*2.5);



//----- ÁLCOOLMETRO -----//

draw_sprite_stretched(spr_alcoholmeter, 0, 113, 52, (sprALCw/40)*alc_percent, sprALCh*2.5);



//----- ESPECIAL -----//

draw_sprite_stretched(spr_power, 0, 113, 77, (sprPWRw/40)*pwr_percent, sprPWRh*2.5);
//------ VARIÁVEIS LOCAIS ------//
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var x_mouse = device_mouse_x_to_gui(0);
var y_mouse = device_mouse_y_to_gui(0);

var inv_x = gui_w/2 - inventory_w/2;
var inv_y = gui_h/2 - inventory_h/2;



//------ ABRIR INVENTÁRIO ------//
if (inventory == true) {
	draw_sprite_ext(spr_inventory, 0, inv_x, inv_y, scale, scale, 0, c_white, 1);

	var ix = 0;
	var iy = 0;

	for (var i = 0; i < slots_total; i++) {
		var slots_x = inv_x + begin_x + ((slot_size + buffer) * ix);
		var slots_y = inv_y + begin_y + ((slot_size + buffer) * iy);
	
		if (point_in_rectangle(x_mouse, y_mouse, slots_x, slots_y, slots_x + slot_size, slots_y + slot_size)) {
			draw_sprite_ext(spr_selector, 0, slots_x, slots_y, scale, scale, 0, c_white, 1);
		}
		
		if (grid_items[# Info.Item, i] != -1) {
			draw_sprite_ext(spr_items, grid_items[# 0, i], slots_x + 8, slots_y + 10, scale, scale, 0, c_white, 1);
		}
		
		ix++;
	
		if (ix >= slots_h) {
			ix = 0;
			iy++;
		}
	}
}
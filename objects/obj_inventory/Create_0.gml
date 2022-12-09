inventory = false;
scale = 5;

begin_x = 9 * scale;
begin_y = 9 * scale;

slots_h = 5;
slots_v = 3;
slots_total = slots_h * slots_v;

slot_size = 16 * scale;
buffer = 1 * scale;

inventory_w = sprite_get_width(spr_inventory) * scale;
inventory_h = sprite_get_height(spr_inventory) * scale;

//----- ITENS -----//

enum Drinks {
	CanecaVazia,
	CanecaAcai,
	CanecaBafoDragao,
	CanecaCervejaComum,
	CanecaCervejaCelestial,
	CanecaCervejaChocolate,
	CanecaLicorFrutas,
	CanecaCervejaGamer,
	CanecaChampanheComum,
	CanecaCherry,
	CanecaSucoMacho,
	CanecaLicorCabriola,
	CanecaHidromelCura,
	CanecaLeiteAzedo,
	CanecaMimosa,
	CanecaLeite,
	CanecaBiritaRaio,
	CanecaChampanheRegeneracao,
	CanecaRumPulo,
	CanecaRaspadinha,
	CanecaRumComum,
	CanecaSpirytus,
	CanecaTeleporte,
	CanecaTequilaSunrise,
	CanecaCachacaGolfada,
	GridSize
}

enum Info {
	Item,
	Amount,
	GridSize
}

grid_items = ds_grid_create(Info.GridSize, slots_total);
ds_grid_set_region(grid_items, 0, 0, 1, slots_total - 1, -1);

//Teste Slots # 1
grid_items[# Info.Item, 0] = Drinks.CanecaCervejaComum;
grid_items[# Info.Amount, 0] =  3;

//Teste Slots # 2
grid_items[# Info.Item, 1] = Drinks.CanecaTequilaSunrise;
grid_items[# Info.Amount, 1] = 1;

//Teste Slots # 3
grid_items[# Info.Item, 2] = Drinks.CanecaBafoDragao;
grid_items[# Info.Amount, 2] =  2;



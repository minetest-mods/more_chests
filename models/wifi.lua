local gen_def = dofile(minetest.get_modpath("more_chests") .. "/utils/base.lua")
local S = minetest.get_translator("more_chests")

local wifi = gen_def({
	description = S("Wifi Chest"),
	type = "wifi chest",
	size = "small",
	tiles = {
		top = "wifi_top.png",
		side = "wifi_side.png",
		front = "wifi_front.png"
	},
	recipe = {
		{"group:wood", "default:mese", "group:wood"},
		{"group:wood", "default:steel_ingot", "group:wood"},
		{"group:wood", "group:wood", "group:wood"}
	},
	allow_metadata_inventory_move = false,
	allow_metadata_inventory_put = false,
	allow_metadata_inventory_take = false,
})

wifi.can_dig = function(pos, player) return true end

minetest.register_node("more_chests:wifi", wifi)
minetest.register_craft({
	output = "more_chests:wifi",
	recipe = wifi.recipe,
})

minetest.register_on_joinplayer(function(player)
	local inv = player:get_inventory()
	inv:set_size("more_chests:wifi", 8*4)
end)

local gen_def = dofile(minetest.get_modpath("more_chests") .. "/utils/base.lua")
local S = minetest.get_translator("more_chests")

local fridge = gen_def({
	-- TODO model open
	description = S("Fridge"),
	type = "fridge",
	size = "big",
	node_box = {
		{-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
	},
	tiles = {
		side = "fridge_side.png",
		front = "fridge_front.png",
	},
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "default:ice", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
	},
})


minetest.register_node("more_chests:fridge", fridge)
minetest.register_craft({
	output = "more_chests:fridge",
	recipe = fridge.recipe,
})

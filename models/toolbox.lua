local gen_def = dofile(minetest.get_modpath("more_chests") .. "/utils/base.lua")
local S = minetest.get_translator("more_chests")

local function register_toolbox(description, type, side_tile, recipe)
	local def = gen_def({
		description = description,
		type = "toolbox",
		size = "big",
		-- node_box = {-0.5, -0.5, -0.5, 1.5, 0.5, 0.5}, -- makes it two blocks wide
		tiles = {
			side = side_tile,
			front = "toolbox_" .. type .. "_front.png",
			top = "toolbox_" .. type .. "_top.png",
		},
		recipe = recipe,
	})
	minetest.register_node("more_chests:toolbox_" .. type, def)
end

local function gen_recipe(craft_item)
	return {
		{craft_item, craft_item, craft_item},
		{craft_item, "group:pickaxe", craft_item},
		{craft_item, craft_item, craft_item}
	}
end

register_toolbox(S("Wooden Toolbox"), "wood", "default_wood.png", gen_recipe("default:wood"))
register_toolbox(S("Aspen Wood Toolbox"), "aspen", "default_aspen_wood.png", gen_recipe("default:aspen_wood"))
register_toolbox(S("Acacia Wood Toolbox"), "acacia", "default_acacia_wood.png", gen_recipe("default:acacia_wood"))
register_toolbox(S("Junglewood Toolbox"), "jungle", "default_junglewood.png", gen_recipe("default:junglewood"))
register_toolbox(S("Pine Wood Toolbox"), "pine", "default_pine_wood.png", gen_recipe("default:pine_wood"))

register_toolbox(S("Steel Toolbox"), "steel", "default_steel_block.png", gen_recipe("default:steel_ingot"))

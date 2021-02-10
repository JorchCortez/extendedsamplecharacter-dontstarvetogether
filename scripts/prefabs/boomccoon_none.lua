local assets =
{
	Asset( "ANIM", "anim/boomccoon.zip" ),
	Asset( "ANIM", "anim/ghost_boomccoon_build.zip" ),
}

local skins =
{
	normal_skin = "boomccoon",
	ghost_skin = "ghost_boomccoon_build",
}

return CreatePrefabSkin("boomccoon_none",
{
	base_prefab = "boomccoon",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"BOOMCOON", "CHARACTER", "BASE"},
	build_name_override = "boomccoon",
	rarity = "Character",
})
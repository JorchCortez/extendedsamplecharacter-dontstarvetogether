PrefabFiles = {
	"boomccoon",
	"boomccoon_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/boomccoon.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/boomccoon.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/boomccoon.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/boomccoon.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/boomccoon_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/boomccoon_silho.xml" ),

    Asset( "IMAGE", "bigportraits/boomccoon.tex" ),
    Asset( "ATLAS", "bigportraits/boomccoon.xml" ),
	
	Asset( "IMAGE", "images/map_icons/boomccoon.tex" ),
	Asset( "ATLAS", "images/map_icons/boomccoon.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_boomccoon.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_boomccoon.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_boomccoon.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_boomccoon.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_boomccoon.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_boomccoon.xml" ),
	
	Asset( "IMAGE", "images/names_boomccoon.tex" ),
    Asset( "ATLAS", "images/names_boomccoon.xml" ),

	Asset( "IMAGE", "images/names_gold_boomccoon.tex" ),
    Asset( "ATLAS", "images/names_gold_boomccoon.xml" ),

    
	--In-Game Image Assets
    Asset("IMAGE", "images/hud/Icon_Tools_test.tex"),
    Asset("ATLAS", "images/hud/Icon_Tools_test.xml"),
}

AddMinimapAtlas("images/map_icons/boomccoon.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local RECIPETABS = GLOBAL.RECIPETABS
local Ingredient = GLOBAL.Ingredient
local character_ingredient = GLOBAL.CHARACTER_INGREDIENT
local TECH = GLOBAL.TECH

--Adding custom Recipe tabs

--Automation Tab
--AddRecipeTab(rec_str, rec_sort, rec_atlas, rec_icon, rec_owner_tag, rec_crafting_station)
local Automation_TAB = AddRecipeTab("Automation", 999,  "images/hud/Icon_Tools_test.xml", "Icon_Tools_test.tex", "boomccoontag")
STRINGS.NAMES.Automation_TAB = "Automation"
--modimport "scripts/custom_tech_tree.lua"
--GLOBAL.AddNewTechTree("AUTOMATION", 2)

--AddRecipe("Lantern", { Ingredient("twigs", 2), Ingredient("rope", 1),Ingredient("flint", 1)},"Automation", TECH.SCIENCE_ONE )



--Boomcoon Items  
local bclantern_recipe = AddRecipe("Lantern", {Ingredient("log", 4), Ingredient("rocks", 4), Ingredient("rope", 2)}, Automation_TAB, TECH.NONE, nil, nil, nil, nil, "boomccoontag", "images/hud/test_tab.xml", "test_tab.tex")
STRINGS.NAMES.WAPATHYBOX = "Lantern" --Crafting tab and on-the-ground name
STRINGS.RECIPE_DESC.WAPATHYBOX = "A Lantern to view it all." --Crafting tab description





-- The character select screen lines
STRINGS.CHARACTER_TITLES.boomccoon = "The automation entusiast"
STRINGS.CHARACTER_NAMES.boomccoon = "Boomccoon"
STRINGS.CHARACTER_DESCRIPTIONS.boomccoon = "*Warm\n*Cool Automation\n*Hoodie Lover"
STRINGS.CHARACTER_QUOTES.boomccoon = "\"I can do that... maybe\""
STRINGS.CHARACTER_SURVIVABILITY.boomccoon = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.BOOMCOON = require "speech_boomccoon"

-- The character's name as appears in-game 
STRINGS.NAMES.BOOMCOON = "Boomcoon"
STRINGS.SKIN_NAMES.boomccoon_none = "Boomcoon"

-- The default responses of examining the character
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BOOMCOON = 
{
	GENERIC = "It's Boomccoon!",
	ATTACKER = "Your machine burned my house!",
	MURDERER = "Murderer!",
	REVIVER = "Boomccoon, friend of ghosts.",
	GHOST = "Boomccoon could use some help please.",
}


-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("boomccoon", "MALE", skin_modes)

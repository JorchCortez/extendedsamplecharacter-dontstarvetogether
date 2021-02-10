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
}

AddMinimapAtlas("images/map_icons/boomccoon.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.boomccoon = "The automation entusiast"
STRINGS.CHARACTER_NAMES.boomccoon = "Boomccoon"
STRINGS.CHARACTER_DESCRIPTIONS.boomccoon = "*Warm\n*Cool Automation\n*Hoodie Lover"
STRINGS.CHARACTER_QUOTES.boomccoon = "\"I can do that... maybe\""
STRINGS.CHARACTER_SURVIVABILITY.boomccoon = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.BOOMCOON = require "speech_boomccoon"

-- The character's name as appears in-game 
STRINGS.NAMES.BOOMCOON = "Esc"
STRINGS.SKIN_NAMES.boomccoon_none = "Esc"

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

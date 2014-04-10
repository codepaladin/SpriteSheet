-- main.lua
 
local sheetInfo = require("spritesheet")
local sheetArray = sheetInfo:getSheet()
local options = sheetArray['frames'][sheetInfo:getFrameIndex("amg1")]

options.width = options.sourceWidth/8
options.numFrames = 8

local imageSheet = graphics.newImageSheet( "spritesheet.png", options )

local sequenceData =
{
    name="walking",
    start=3,
    count=2,
    time=1000,
}

local character = display.newSprite( imageSheet, sequenceData )

character.x = display.contentCenterX
character.y = display.contentCenterY

character:setSequence( "walking" )
character:play()


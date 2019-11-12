-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
 
 system.activate( "multitouch" ) -- so you can touch more than one part of the screen 
-- Find device widith & height 

display.setStatusBar( display.HiddenStatusBar ) --hides battery and time bar on phones

_H = display.contentHeight; 
_W = display.contentWidth; 

local model = require("model") 
local view = require("view")
local controller = require("controller")


model.initialise()
view.initialise()
controller.initialise()
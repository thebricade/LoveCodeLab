-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
 
 system.activate( "multitouch" ) -- so you can touch more than one part of the screen 
-- Find device widith & height 

display.setStatusBar( display.HiddenStatusBar ) --hides battery and time bar on phones



local model = require("model") 
local view = require("view")
local controller = require("controller")

model.initialze()
view.initialze(model)
controller.initialze()
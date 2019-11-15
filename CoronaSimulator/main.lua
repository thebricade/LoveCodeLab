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
controller.initialze(model)


local object = display.newImage( "plot.png" )
object.id = "ball object"

 local function onObjectTouch( event )
if ( event.phase == "began" ) then
    print( "Touch event began on: " .. event.target.id )
elseif ( event.phase == "ended" ) then
    print( "Touch event ended on: " .. event.target.id )
end
return true
end
object:addEventListener( "touch", onObjectTouch )

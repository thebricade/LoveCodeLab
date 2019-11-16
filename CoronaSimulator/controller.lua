--[[

]]

system.activate("multitouch");


local controller = { }

--
--		Initialise the model.
--


function controller.initialze(model)
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
	
	--onObjectTouch(event)
end





--you would maybe ant to create something like update
--[[
function controller.update()
end

function plots:touch (event, view, model)

-- check for touch on any plot sprite

-- if a touch happens on a plot sprite send back to model to increase score
end

object:addEventListener( "touch", plots )
--]]

return controller -- need to return
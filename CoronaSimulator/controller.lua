--[[

]]

system.activate("multitouch");


local controller = { }

--
--		Initialise the model.
--


function controller.initialze(view)
	
	local function onObjectTouch( event ) -- you cannot do this in unity 
		if ( event.phase == "began" ) then
    		print( "Touch event began on: " .. event.target.id )
			elseif ( event.phase == "ended" ) then
    		print( "Touch event ended on: " .. event.target.id )
		end
		return true
	end
	--since lua doesn't really have arrays its weird to get a like array.length
	for i=1,table.getn(view.plots) do
		view.plots[i]:addEventListener( "touch", onObjectTouch )
		print(i)
	end
	
	
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
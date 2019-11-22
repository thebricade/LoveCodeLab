--[[

]]

system.activate("multitouch");


local controller = { }

--
--		Initialise the model.
--


function controller.initialze(view,model)
	
	local function tapListener(event)
		model.isGrowing()
		print( "Object tapped: " .. tostring(event.target) )  -- "event.target" is the tapped object
    	return true
	end


	--touch events may run multiple times 
	
	--[[local function onObjectTouch( event ) -- you cannot do this in unity 
		if ( event.phase == "began" ) then
			--model.isGrowing() this will get called multiple times

    		print( "Touch event began on: " .. event.target.id )
			elseif ( event.phase == "ended" ) then
    		print( "Touch event ended on: " .. event.target.id )
		end
		return true
	end
	--since lua doesn't really have arrays its weird to get a like array.length
	-- http://lua-users.org/lists/lua-l/2011-05/msg00014.html
	-- set is deprecated and to set and get you use metatables? maybe
	for i=1,3 do
		view.plots[i]:addEventListener( "touch", onObjectTouch )
		
	end
	
	
	--onObjectTouch(event)--]]
	view.plots[1]:addEventListener("tap", tapListener)
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
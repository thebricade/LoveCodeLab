--[[

]]

system.activate("multitouch");

local controller = { }

--
--		Initialise the model.
--
function controller.initialze(view, model)

end

--you would maybe ant to create something like update
function controller.update()
end

function plots:touch (event, view, model)

-- check for touch on any plot sprite

-- if a touch happens on a plot sprite send back to model to increase score
end

object:addEventListener( "touch", plots )

return controller -- need to return
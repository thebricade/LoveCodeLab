--[[

]]

local view = { }
_H = display.contentHeight; 
_W = display.contentWidth; 
--
--		Initialise the model.
--
function view.initialze()
	local screenText = display.newText( "You have" ,_W/2,_H/8, native.systemFontBold )	

	--[[local plotAnimation = 
	{
		name = "plot", 
		frame = {1}
		time = 0 
		loopCount = 0 --if you were to have animation 
	}]]


	--[[local plotSprite = display.newImageRect("plot.png",50,50)
	plotSprite.x = 200
	plotSprite.y = 200 --]]

	local circ = display.newCircle( 0, 0, 64 )
	--local plotSprite = display.newSprite( spritePlot, plotAnimation )
	view.plots = {} -- array to store plant plots 

	local GRID_SPACE = 60
	local currentX = 0 
	
	for i=1,10 do
		view.plots[i] = display.newImageRect("plot.png",50,50) -- makes an image at 0,0
		view.plots[i].x = _W/4 + (i-1) * GRID_SPACE
		view.plots[i].y = _H/3.5 

		--view.plots[i] = 1
		--view.view.plots[i] = graphics.newImageSheet( "plot.png", 100,100 )
		--view.plots{i} = display.newImage("plot.png", 100,100)
		print(i)
	end


end




return view -- need to return
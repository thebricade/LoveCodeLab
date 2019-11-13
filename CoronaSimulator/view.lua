--[[

]]

local view = { }
_H = display.contentHeight; 
_W = display.contentWidth; 
--
--		Initialise the model.
--
function view.initialise()
	local screenText = display.newText( "You have" ,_W/2,_H/8, native.systemFontBold )	

	local plotAnimation = 
	{
		name = "plot", 
		frame = {1}
		time = 0 
		loopCount = 0 --if you were to have animation 
	}

	local circ = display.newCircle( 0, 0, 64 )
	local plotSprite = display.newSprite( "plot.png", plotAnimation )
	view.plots = {} -- array to store plant plots 
	
	for i=1,10 do
		--view.plots[i] = 1
		--view.view.plots[i] = graphics.newImageSheet( "plot.png", 100,100 )
		--view.plots{i} = display.newImage("plot.png", 100,100)
		print(i)
	end


end




return view -- need to return
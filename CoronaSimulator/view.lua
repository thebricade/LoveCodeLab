--[[

]]

local view = { }

view.plots = {} -- array to store plant plots 
view.plotsLength =0

_H = display.contentHeight; 
_W = display.contentWidth; 
screenText = display.newText

--local _model = model

--
--		Initialise the model.
--

	

function view.initialze(model)
	screenText = display.newText(model.plantsHarvested ,_W/2,_H/8, native.systemFontBold )	
	--figure out how append string and variable 

	--model.updatePlantsHarvest()
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
	



	local GRID_WIDTH = 5
	local GRID_HEIGHT = 5
	local currentX = 0 
	local GRID_X_OFFSET = _W / 3.5
	local GRID_Y_OFFSET = _H / 6
	
	for i=1,GRID_WIDTH do

		for j=1,GRID_HEIGHT do
			view.plots[i] = display.newImageRect("plot.png",30,30) 
			view.plots[i].x = GRID_X_OFFSET + (_W / 10 * (i - 1))
			view.plots[i].y = GRID_Y_OFFSET + (_H / 8 * (j))
			view.plots[i].id = "plot" 
			view.plotsLength = view.plotsLength + 1
			print(view.plotsLength)
		end
	end
		--[[
		view.plots[i] = display.newImageRect("plot.png",50,50) -- makes an image at 0,0
		-- this is a for loop inside of a for loop7
		view.plots[i].x = _W/4 + (i-1) * GRID_SPACE
		view.plots[i].y = _H/3.5 

		--view.plots[i] = 1
		--view.view.plots[i] = graphics.newImageSheet( "plot.png", 100,100 )
		--view.plots{i} = display.newImage("plot.png", 100,100)
		print(i)--]]
	


end

function view.updateText(model)
	
	screenText = display.newText(model.plantsHarvested ,_W/2,_H/8, native.systemFontBold )	
end

function updatePlantsHarvest( ... )
	-- body
end




return view -- need to return
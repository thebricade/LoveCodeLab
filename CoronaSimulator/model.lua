--[[

]]

local model = 
{

}

model.growSpeed = 5
model.plantsHarvested = 0 
model.startTime = 0

--
--		Initialise the model.
--
function model.initialze()

end



function model.harvestPlant(view)
	model.plantsHarvested = model.plantsHarvested +1
	view.updateText(model)
	print( "harvested plant" ) 	
end


function model.isGrowing(view)
	
	--if startTime not nill then
	if model.startTime == nill then
		model.startTime = os.time() 
		local endTime = startTime + 10 
	end

	

	print(startTime)

	--[[repeat
		print("isgrowing")
		--time is never updating. 
		--startTime = os.time() -- still not right maybe print out the Start Time & End time to see how it looks 
		print(startTime)

	until startTime >= endTime; ]]

end 




return model -- need to return
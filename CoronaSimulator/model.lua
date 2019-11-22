--[[

]]

local model = 
{

}

model.growSpeed = 5
model.plantsHarvested = 0 

--
--		Initialise the model.
--
function model.initialze()

end



function model.harvestPlant()
	model.plantsHarvested = model.plantsHarvested +1
	print( "harvested plant" ) 	
end


function model.isGrowing()
	local startTime = os.time() 
	local endTime = startTime + 10 
	repeat
		print("isgrowing")
	until startTime >= endTime; 

end 




return model -- need to return
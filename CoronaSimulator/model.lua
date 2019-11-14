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
end



return model -- need to return
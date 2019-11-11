local playerSprite
local flashlightSprite

enemy = {
		x = 0,
		y = 0 ,
		moveSpeed = 4,
		sprite = load.graphics.newImage("lover1.PNG"), 
		numberOfEnemies = 0
}

player = {
		x = 100,
		y = 500,
		moveSpeed = 3, 
		sprite = love.graphics.newImage("lover1.PNG")
}

flashlight = {
		x = 300, --don't forget commas 
		y= 300,
		flicker = false, 
		isOn = false,
		power = 100,
		sprite = love.graphics.newImage("flashlight.PNG")
}
--there's a lot about event driven programming to add things to a event queue before doing them

function love.load()
	--love.window.setMode(500, 500, {borderless=true})
	love.window.setFullscreen(true, "desktop")
	love.keyboard.setKeyRepeat(true)  --this has to be set to hold down keypresses
	--LOVE uses 0-1 not 0-255
	red = 115/255
	green = 27/255
	blue = 135/255
	love.graphics.setBackgroundColor(red,green,blue)

	--loading sprites and background--
	--playerSprite = love.graphics.newImage("lover1.PNG")
	--playerX = 100
	--playerY = 500 

	-- Flashlight ---
	--flashlightSprite = love.graphics.newImage("lover1.PNG") --just use same sprite for now
	--flashlightBattery = 100;
	--flashLightX = playerX; 
	--flashLightY = playerY; 

	--made faux debug text-- 
	text = "Nothing here"
	counter = 0
end

function love.update(dt)
	--love.graphics.print("hello I am here", 300,300)
	counter = counter + 1
end

function love.draw()
	PlayerConstructor()  -- is this only making one? or many?
	--wait can I make a player and constructor that has this?
	love.graphics.print(flashlight.power, 300,300)
	if flashlight.isOn == true then
		love.graphics.draw(flashlight.sprite,playerx,playerY)
	end
end

function PlayerConstructor()
	love.graphics.draw(player.sprite,player.x,player.y) 
	-- love.graphics.drawq which adds a canvas, quad and x, y)
		
end

--function FlashlightConstructor()
--	love.graphics.draw(flashlight.sprite,playerX,playerY)
--end

function FlashlightMoreBattery(sizeOfBattery)
	flashlight.power = flashlight.power + sizeOfBattery
end

function love.keypressed(key, isrepeat)
   
--Player Controller-- 
   if key == "w" then  --did you know Keys are case sensitive and can't be uppercase D:< 
      	--check if we still have battery in the flashlight 
      	if flashlight.power > 0 then
      		--FlashlightConstructor()
      		flashlight.isOn = true
      		flashlight.power = flashlight.power - 1
      	else 
      		flashlight.isOn = false -- this should turn into a statemachine? so we can turn it off
      	end
   elseif key == "a" then
   		player.x = player.x - 2 
   		--do something
   	elseif key == "s" then 
   		--do something
   	elseif key == "d" then
   		player.x = player.x + 2
   		--do something
   	elseif key == "escape"then
   		love.event.quit()
   	end
end

function love.keyreleased( key )
	flashlight.isOn = false
end





local playerSprite

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
	playerSprite = love.graphics.newImage("lover1.PNG")
	playerX = 100
	playerY = 500 

	--made faux debug text-- 
	text = "Nothing here"
	counter = 0
end

function love.update(dt)
	--love.graphics.print(text, 300,300)
	counter = counter + 1
end

function love.draw()
	PlayerConstructor()  -- is this only making one? or many?
	--wait can I make a player and constructor that has this?
	love.graphics.print(text, 300,300)
end

function PlayerConstructor()
	love.graphics.draw(playerSprite,playerX,playerY) 
	-- love.graphics.drawq which adds a canvis, quad and x, y)
		
end

function love.keypressed(key, isrepeat)
   
--Player Controller-- 
   if key == "w" then  --did you know Keys are case sensitive and can't be uppercase D:< 
      text = "W mouse button has been pressed"
   elseif key == "a" then
   		playerX = playerX - 2 
   		--do something
   	elseif key == "s" then 
   		--do something
   	elseif key == "d" then
   		playerX = playerX + 2
   		--do something
   	elseif key == "escape"then
   		love.event.quit()
   	end
end





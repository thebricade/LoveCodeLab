local playerSprite

function love.load()
	--love.window.setMode(500, 500, {borderless=true})
	love.window.setFullscreen(true, "desktop")
	--LOVE uses 0-1 not 0-255
	red = 115/255
	green = 27/255
	blue = 135/255
	love.graphics.setBackgroundColor(red,green,blue)

	--loading sprites and background--
	playerSprite = love.graphics.newImage("lover1.PNG")

	--made faux debug text-- 
	text = "Nothing here"
end

function love.update(dt)
	love.graphics.print(text, 300,300)
end

function love.draw()
	PlayerConstructor()  -- is this only making one? or many?
	--wait can I make a player and constructor that has this? 
	love.graphics.print(text, 300,300)
end

function PlayerConstructor()
	love.graphics.draw(playerSprite)

	
	
end

function love.keypress( key )
   if key == "W" then
      text = "W mouse button has been pressed"
   end
end
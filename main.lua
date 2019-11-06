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
end

function love.update(dt)

end

function love.draw()
	love.graphics.draw(playerSprite) --wait can I make a player and constructor that has this? 
end




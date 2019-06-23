function love.load()
    -- Create a player object with an x, y and size
    player = {
        x = 100,
        y = 100,
        size = 25
    }
end

function love.update(dt)
    -- move using arrow keys 
    if love.keyboard.isDown("left") then
        player.x = player.x - 200 * dt
    elseif love.keyboard.isDown("right") then
        player.x = player.x + 200 * dt
    end

    -- new if statement because continuing the old one would make diagonal movement not work
    if love.keyboard.isDown("up") then
        player.y = player.y - 200 * dt
    elseif love.keyboard.isDown("down") then
        player.y = player.y + 200 * dt
    end
end

function love.draw()
    -- The players and coins are going to be circles
    love.graphics.circle("line", player.x, player.y, player.size)
end
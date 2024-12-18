

local loveframes = require("LoveFrames.loveframes")

local gui = require("gui")


function love.load()
  gui.create()

end

function love.update(dt)
    loveframes.update(dt)
 end

function love.draw()
    love.graphics.clear(0.15, 0.17, 0.2)
    loveframes.draw()
end

-- mouse interactions
function love.mousepressed(x, y, button)
    loveframes.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
    loveframes.mousereleased(x, y, button)
end

-- keypad interactions
function love.keypressed(key, isrepeat)
    loveframes.keypressed(key, isrepeat)
end

function love.keyreleased(key)
    loveframes.keyreleased(key)
end

function love.textinput(text)
    loveframes.textinput(text)
end



local loveframes = require("LoveFrames.loveframes")

function love.load()
  love.window.setTitle("AT-Commander")
  love.window.setMode(1100, 900)

  local header = loveframes.Create("text")
  header:SetPos(20,10)
  header:SetText("AT-Commander")
  header:SetFont(love.graphics.newFont(20))
  serialImage = love.graphics.newImage("images/serial.png")

  local button1 = loveframes.Create("button")
  button1:SetText("") -- button text
  button1:SetSize(110, 102)
  button1:SetPos(20, 60)
  button1:SetImage(serialImage) -- image setting
  button1.OnClick = function()
    print("Serial")
  end

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

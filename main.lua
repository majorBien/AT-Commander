

local loveframes = require("LoveFrames.loveframes")

function love.load()
  love.window.setTitle("AT-Commander")
  love.window.setMode(1100, 900)

  local header = loveframes.Create("text")
  header:SetPos(20,10)
  header:SetText("AT-Commander")
  header:SetFont(love.graphics.newFont(20))

end

function love.update(dt)
  loveframes.update(dt)
end


function love.draw()
    love.graphics.clear(0.15, 0.17, 0.2)
    loveframes.draw()
end


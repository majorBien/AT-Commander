

local loveframes = require("LoveFrames.loveframes")
local serial = require("serial")



function createGUI()
  love.window.setTitle("AT-Commander")
  love.window.setMode(510, 750)

  local header = loveframes.Create("text")
  header:SetPos(130,10)
  header:SetText("AT-Commander")
  header:SetFont(love.graphics.newFont(33))

  --images load start
  serialImage = love.graphics.newImage("images/serial.png")
  bluetoothImage = love.graphics.newImage("images/bluetooth.png")
  ethernetImage = love.graphics.newImage("images/ethernet.png")
  wifiImage = love.graphics.newImage("images/wifi.png")
  --images load end

  local button1 = loveframes.Create("button")
  button1:SetText("") -- button text
  button1:SetSize(110, 102)
  button1:SetPos(20, 60)
  button1:SetImage(serialImage) -- image setting
  button1.OnClick = function()
    --print("Serial")

    serial.create()
  end

  local button2 = loveframes.Create("button")
  button2:SetText("") -- button text
  button2:SetSize(110, 102)
  button2:SetPos(140, 60)
  button2:SetImage(bluetoothImage) -- image setting
  button2.OnClick = function()
    print("Bluetooth")

  end


  local button3 = loveframes.Create("button")
  button3:SetText("") -- button text
  button3:SetSize(110, 102)
  button3:SetPos(260, 60)
  button3:SetImage(wifiImage) -- image setting
  button3.OnClick = function()
    print("WiFi")

  end

  local button4 = loveframes.Create("button")
  button4:SetText("") -- button text
  button4:SetSize(110, 102)
  button4:SetPos(380, 60)
  button4:SetImage(ethernetImage) -- image setting
  button4.OnClick = function()
    print("Ethernet")

  end

  if Chocie == 0 then
    print("Serial")

  elseif Choice == 1 then

  elseif Choice == 2 then

  elseif Choice == 3 then

  end
end

return {
  create = createGUI
}

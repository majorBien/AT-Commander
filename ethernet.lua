
local loveframes = require("LoveFrames.loveframes")

function Ethernet() -- section for Ethernet settings
    print("Ethernet")
    local uiElements = {}
    local header = loveframes.Create("text")
    header:SetPos(130, 170)
    header:SetText("Ethernet Settings")
    header:SetFont(love.graphics.newFont(30))

    local label = loveframes.Create("text")
    label:SetText("IP Address:")
    label:SetFont(love.graphics.newFont(15))
    label:SetPos(20, 220)

    local label2 = loveframes.Create("text")
    label2:SetText("Subnet Mask:")
    label2:SetFont(love.graphics.newFont(15))
    label2:SetPos(20, 250)

    local label3 = loveframes.Create("text")
    label3:SetText("Default Gateway:")
    label3:SetFont(love.graphics.newFont(15))
    label3:SetPos(20, 280)

    local input = loveframes.Create("textinput")
    input:SetPos(180, 220)
    input:SetWidth(320)
    input:SetText("192.168.1.1")
    input.OnEnter = function(object, text)
        print("IP Address set to:", text)
    end

    local subnet = loveframes.Create("textinput")
    subnet:SetPos(180, 250)
    subnet:SetWidth(320)
    subnet:SetText("255.255.255.0")
    subnet.OnEnter = function(object, text)
        print("Subnet Mask set to:", text)
    end

    local gateway = loveframes.Create("textinput")
    gateway:SetPos(180, 280)
    gateway:SetWidth(320)
    gateway:SetText("192.168.1.254")
    gateway.OnEnter = function(object, text)
        print("Default Gateway set to:", text)
    end


    table.insert(uiElements, header) --put gui elements to the table
    table.insert(uiElements, label)
    table.insert(uiElements, label2)
    table.insert(uiElements, label3)
    table.insert(uiElements, input)
    table.insert(uiElements, subnet)
    table.insert(uiElements, gateway)
    return uiElements

end

return {
    create = Ethernet
}


local loveframes = require("LoveFrames.loveframes")

function Bluetooth() -- section for Bluetooth settings
    print("Bluetooth")
    local uiElements = {}
    local header = loveframes.Create("text")
    header:SetPos(120, 170)
    header:SetText("Bluetooth Settings")
    header:SetFont(love.graphics.newFont(30))

    local label = loveframes.Create("text")
    label:SetText("Device name:")
    label:SetFont(love.graphics.newFont(15))
    label:SetPos(20, 220)


    local dropdown = loveframes.Create("multichoice") --create list
    dropdown:SetText("Select Device")
    dropdown:SetPos(180, 220)
    dropdown:SetWidth(320)
    dropdown:AddChoice("A")
    dropdown:AddChoice("B")
    dropdown:AddChoice("C")
    dropdown.OnChoiceSelected = function(object, choice)
        print("Select device:", choice)
    end
    table.insert(uiElements, header) --put gui elements to the table
    table.insert(uiElements, label)

    table.insert(uiElements, dropdown)
    return uiElements
end

return {
    create = Bluetooth
}

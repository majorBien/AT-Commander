
local loveframes = require("LoveFrames.loveframes")

function WiFi() -- section for Wi-Fi settings
    print("Wi-Fi")
    local uiElements = {}
    local header = loveframes.Create("text")
    header:SetPos(155, 170)
    header:SetText("Wi-Fi Settings")
    header:SetFont(love.graphics.newFont(30))

    local label = loveframes.Create("text")
    label:SetText("SSID:")
    label:SetFont(love.graphics.newFont(15))
    label:SetPos(20, 220)

    local label2 = loveframes.Create("text")
    label2:SetText("Password:")
    label2:SetFont(love.graphics.newFont(15))
    label2:SetPos(20, 250)

    local label3 = loveframes.Create("text")
    label3:SetText("Security Type:")
    label3:SetFont(love.graphics.newFont(15))
    label3:SetPos(20, 280)

    local input = loveframes.Create("textinput")
    input:SetPos(180, 220)
    input:SetWidth(320)
    input:SetText("YourSSID")
    input.OnEnter = function(object, text)
        print("SSID set to:", text)
    end

    local password = loveframes.Create("textinput")
    password:SetPos(180, 250)
    password:SetWidth(320)
    password:SetMasked(true)
    password.OnEnter = function(object, text)
        print("Password entered")
    end

    local dropdown = loveframes.Create("multichoice")
    dropdown:SetText("Select Security Type")
    dropdown:SetPos(180, 280)
    dropdown:SetWidth(320)
    dropdown:AddChoice("WPA2")
    dropdown:AddChoice("WEP")
    dropdown:AddChoice("Open")
    dropdown.OnChoiceSelected = function(object, choice)
        print("Security type selected:", choice)
    end


    table.insert(uiElements, header) --put gui elements to the table
    table.insert(uiElements, label)
    table.insert(uiElements, label2)
    table.insert(uiElements, label3)
    table.insert(uiElements, input)
    table.insert(uiElements, password)
    table.insert(uiElements, dropdown)
    return uiElements

end

return {
    create = WiFi
}

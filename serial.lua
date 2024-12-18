
local loveframes = require("LoveFrames.loveframes")

function Serial() --section for serial settings
    print("Serial")


    local header = loveframes.Create("text")
    header:SetPos(170,170)
    header:SetText("Serial port")
    header:SetFont(love.graphics.newFont(30))

    local label = loveframes.Create("text") --create text
    label:SetText("Port number:")
    --label:SetDefaultColor({1, 0, 0, 1}) -- red (RGBA: 1, 0, 0, 1)
    label:SetFont(love.graphics.newFont(15))
    label:SetPos(20, 220)

    local label2 = loveframes.Create("text") --create text
    label2:SetText("Bits per second:")
    label2:SetFont(love.graphics.newFont(15))
    label2:SetPos(20, 250)

    local label3 = loveframes.Create("text") --create text
    label3:SetText("Data bits:")
    label3:SetFont(love.graphics.newFont(15))
    label3:SetPos(20, 280)

    local label4 = loveframes.Create("text") --create text
    label4:SetText("Parity:")
    label4:SetFont(love.graphics.newFont(15))
    label4:SetPos(20, 310)

    local label5 = loveframes.Create("text") --create text
    label5:SetText("Flow control:")
    label5:SetFont(love.graphics.newFont(15))
    label5:SetPos(20, 340)

    local dropdown = loveframes.Create("multichoice") --create list
    dropdown:SetText("Select Port")
    dropdown:SetPos(180, 220)
    dropdown:SetWidth(320)
    dropdown:AddChoice("COM0")
    dropdown:AddChoice("COM1")
    dropdown:AddChoice("COM2")
    dropdown.OnChoiceSelected = function(object, choice)
        print("Select port:", choice)
    end


    local dropdown2 = loveframes.Create("multichoice") --create list
    dropdown2:SetText("Select frame length")
    dropdown2:SetPos(180, 250)
    dropdown2:SetWidth(320)
    dropdown2:AddChoice("9600")
    dropdown2:AddChoice("57600")
    dropdown2:AddChoice("115200")
    dropdown2.OnChoiceSelected = function(object, choice)
        print("Set speed:", choice)
    end

    local dropdown3 = loveframes.Create("multichoice") --create list
    dropdown3:SetText("Set number of bits")
    dropdown3:SetPos(180, 280)
    dropdown3:SetWidth(320)
    dropdown3:AddChoice("5 bits")
    dropdown3:AddChoice("6 bits")
    dropdown3:AddChoice("7 bits")
    dropdown3:AddChoice("8 bits")
    dropdown3.OnChoiceSelected = function(object, choice)
        print("Set number of bits:", choice)
    end

    local dropdown4 = loveframes.Create("multichoice") --create list
    dropdown4:SetText("Set parity")
    dropdown4:SetPos(180, 310)
    dropdown4:SetWidth(320)
    dropdown4:AddChoice("None")
    dropdown4:AddChoice("Even")
    dropdown4:AddChoice("Odd")
    dropdown4.OnChoiceSelected = function(object, choice)
        print("Set parity", choice)
    end

    local dropdown5 = loveframes.Create("multichoice") --create list
    dropdown5:SetText("Set flow control")
    dropdown5:SetPos(180, 340)
    dropdown5:SetWidth(320)
    dropdown5:AddChoice("None")
    dropdown5:AddChoice("XON/XOF")
    dropdown5:AddChoice("RTS/CTS")
    dropdown5:AddChoice("DSR/DTR")
    dropdown5.OnChoiceSelected = function(object, choice)
        print("Set flow control", choice)
    end
end

return {
  create = Serial
}

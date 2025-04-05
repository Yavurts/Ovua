-- Création du GUI custom
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "OvuaGUI"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 200, 0, 250)
frame.Position = UDim2.new(0, 20, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "Ovua Script"
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true

-- Toggles init
local toggles = {
    autoAttack = false,
    autoBuy = false,
    autoFusion = false,
    autoDungeon = false
}

-- Import du service pour simuler un clic souris (M1)
local VirtualInputManager = game:GetService("VirtualInputManager")

-- Fonctions des boutons
local function runToggle(name)
    while toggles[name] do
        if name == "autoAttack" then
            -- Simule un clic gauche toutes les 0.1 sec
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
        else
            print("[" .. name .. "] en cours...")
        end
        task.wait(0.1)
    end
end

-- Fonction de création de boutons dans l'UI
local function createToggleButton(text, toggleName, yPos)
    local button = Instance.new("TextButton", frame)
    button.Size = UDim2.new(1, -20, 0, 30)
    button.Position = UDim2.new(0, 10, 0, yPos)
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextScaled = true
    button.Text = text .. ": OFF"

    button.MouseButton1Click:Connect(function()
        toggles[toggleName] = not toggles[toggleName]
        button.Text = text .. ": " .. (toggles[toggleName] and "ON" or "OFF")

        if toggles[toggleName] then
            task.spawn(function()
                runToggle(toggleName)
            end)
        end
    end)
end

-- Boutons affichés
createToggleButton("Auto Attack", "autoAttack", 40)
createToggleButton("Auto Buy (E)", "autoBuy", 80)
createToggleButton("Auto Fusion", "autoFusion", 120)
createToggleButton("Auto Dungeon", "autoDungeon", 160)

-- Chargement OrionLib
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Création de la fenêtre principale
local Window = OrionLib:MakeWindow({Name = "Ovua - Arise Script", HidePremium = false, SaveConfig = true, ConfigFolder = "OvuaSettings"})

-- Variables toggles
local autoAttack = false
local autoBuy = false
local autoFusion = false
local autoDungeon = false
local attackSpeed = false

-- Auto Attack (exemple)
function startAutoAttack()
    while autoAttack do
        -- Remplace par le code d'attaque réel
        print("Attaque automatique...")
        task.wait(0.1)
    end
end

-- Auto Buy
function startAutoBuy()
    while autoBuy do
        print("Achat d'arme E...")
        task.wait(2)
    end
end

-- Auto Fusion
function startAutoFusion()
    while autoFusion do
        print("Fusion en cours...")
        task.wait(3)
    end
end

-- Auto Dungeon
function startAutoDungeon()
    while autoDungeon do
        print("Relance du donjon...")
        task.wait(5)
    end
end

-- Attack Speed Boost
function applyAttackSpeed()
    if attackSpeed then
        print("Boost vitesse d'attaque activé")
        -- Insère ici le code pour booster la vitesse si applicable
    else
        print("Boost vitesse désactivé")
    end
end

-- Onglet Principal
local Tab = Window:MakeTab({
    Name = "Fonctions",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddToggle({
    Name = "Auto Attack",
    Default = false,
    Callback = function(Value)
        autoAttack = Value
        if Value then startAutoAttack() end
    end
})

Tab:AddToggle({
    Name = "Auto Buy (E)",
    Default = false,
    Callback = function(Value)
        autoBuy = Value
        if Value then startAutoBuy() end
    end
})

Tab:AddToggle({
    Name = "Auto Fusion",
    Default = false,
    Callback = function(Value)
        autoFusion = Value
        if Value then startAutoFusion() end
    end
})

Tab:AddToggle({
    Name = "Auto Dungeon",
    Default = false,
    Callback = function(Value)
        autoDungeon = Value
        if Value then startAutoDungeon() end
    end
})

Tab:AddToggle({
    Name = "Attack Speed Boost",
    Default = false,
    Callback = function(Value)
        attackSpeed = Value
        applyAttackSpeed()
    end
})

-- Lancement du menu
OrionLib:Init()

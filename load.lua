-- Chargement des bibliothèques nécessaires
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local Window = Library:CreateWindow("Arise Crossover Script")

-- Variables pour les fonctionnalités
local autoAttack = false
local attackSpeedBoost = false
local autoBuy = false
local autoFusion = false
local autoDungeon = false

-- Fonction pour l'attaque automatique
function AutoAttack()
    while autoAttack do
        -- Code pour attaquer les ennemis
        wait(0.1) -- Ajuste le délai selon tes besoins
    end
end

-- Fonction pour augmenter la vitesse d'attaque
function AttackSpeedBoost()
    if attackSpeedBoost then
        -- Code pour augmenter la vitesse d'attaque
    else
        -- Code pour réinitialiser la vitesse d'attaque
    end
end

-- Fonction pour l'achat automatique
function AutoBuy()
    while autoBuy do
        -- Code pour acheter des armes de rang E
        wait(1) -- Ajuste le délai selon tes besoins
    end
end

-- Fonction pour la fusion automatique
function AutoFusion()
    while autoFusion do
        -- Code pour fusionner les armes
        wait(1) -- Ajuste le délai selon tes besoins
    end
end

-- Fonction pour la relance automatique des donjons
function AutoDungeon()
    while autoDungeon do
        -- Code pour relancer les donjons
        wait(1) -- Ajuste le délai selon tes besoins
    end
end

-- Ajout des boutons au menu
Window:Toggle("Auto Attack", {flag = "autoAttack"}, function(value)
    autoAttack = value
    if autoAttack then
        AutoAttack()
    end
end)

Window:Toggle("Attack Speed Boost", {flag = "attackSpeedBoost"}, function(value)
    attackSpeedBoost = value
    AttackSpeedBoost()
end)

Window:Toggle("Auto Buy", {flag = "autoBuy"}, function(value)
    autoBuy = value
    if autoBuy then
        AutoBuy()
    end
end)

Window:Toggle("Auto Fusion", {flag = "autoFusion"}, function(value)
    autoFusion = value
    if autoFusion then
        AutoFusion()
    end
end)

Window:Toggle("Auto Dungeon", {flag = "autoDungeon"}, function(value)
    autoDungeon = value
    if autoDungeon then
        AutoDungeon()
    end
end)

--[[ ESP / Chams Açma Scripti ]]--

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera

-- Global tablolar
_G.ESP_Drawings = _G.ESP_Drawings or {}

-- Önceki bağlantı varsa kapat
if _G.ESP_Connection then
    _G.ESP_Connection:Disconnect()
    _G.ESP_Connection = nil
end

local function IsOnScreen(part)
    local screenPoint, onScreen = Camera:WorldToViewportPoint(part.Position)
    return onScreen
end

local function UpdateDrawings()
    -- Önceki çizimleri kaldır
    for _, drawing in pairs(_G.ESP_Drawings) do
        pcall(function()
            drawing:Remove()
        end)
    end
    _G.ESP_Drawings = {}

    for _, player in pairs(Players:GetPlayers()) do
        local character = player.Character
        local humanoid = character and character:FindFirstChild("Humanoid")
        local head = character and character:FindFirstChild("Head")

        if humanoid and head and IsOnScreen(head) then
            local topLeft = character:GetModelCFrame():PointToWorldSpace(character:GetExtentsSize() * -0.5)
            local bottomRight = character:GetModelCFrame():PointToWorldSpace(character:GetExtentsSize() * 0.5)

            local topLeftScreen, _ = Camera:WorldToViewportPoint(topLeft)
            local bottomRightScreen, _ = Camera:WorldToViewportPoint(bottomRight)

            local width = bottomRightScreen.X - topLeftScreen.X
            local height = bottomRightScreen.Y - topLeftScreen.Y

            -- Box çizimi
            local box = Drawing.new("Square")
            box.Position = Vector2.new(topLeftScreen.X, topLeftScreen.Y)
            box.Size = Vector2.new(width, height)
            box.Color = Color3.new(1, 1, 1)
            box.Thickness = 2
            box.Filled = false
            table.insert(_G.ESP_Drawings, box)

            -- Health bar
            local healthPercentage = humanoid.Health / humanoid.MaxHealth
            local healthBarHeight = height * healthPercentage
            local healthBar = Drawing.new("Square")
            healthBar.Position = Vector2.new(bottomRightScreen.X, topLeftScreen.Y)
            healthBar.Size = Vector2.new(10, healthBarHeight)
            healthBar.Color = Color3.new(1 - healthPercentage, healthPercentage, 0)
            healthBar.Thickness = 1
            healthBar.Filled = true
            table.insert(_G.ESP_Drawings, healthBar)

            -- Player name
            local playerName = Drawing.new("Text")
            playerName.Text = player.Name
            playerName.Position = Vector2.new(topLeftScreen.X + (width / 2), topLeftScreen.Y - 14)
            playerName.Size = 14
            playerName.Color = Color3.new(1, 1, 1)
            playerName.Center = true
            table.insert(_G.ESP_Drawings, playerName)
        end
    end
end

-- RenderStepped bağlantısı
_G.ESP_Connection = game:GetService("RunService").RenderStepped:Connect(function()
    UpdateDrawings()
end)

-- Yeni GUI Tasarımı - 3 Menü Sistemi
-- CremiWorld Tarafından Tasarlandı

pcall(function() game.CoreGui["YeniGUI"]:Destroy() end)

local YeniGUI = Instance.new("ScreenGui")
YeniGUI.Name = "YeniGUI"
YeniGUI.Parent = game.CoreGui
YeniGUI.ResetOnSpawn = false

-- Ana Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = YeniGUI
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.05, 0, 0.1, 0)
MainFrame.Size = UDim2.new(0, 600, 0, 400)
MainFrame.Visible = true

-- Köşe Yumuşatma
local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim.new(0, 12)

-- Üst Bar
local TopBar = Instance.new("Frame")
TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0, 0, 0, 0)
TopBar.Size = UDim2.new(0, 600, 0, 35)

local TopCorner = Instance.new("UICorner", TopBar)
TopCorner.CornerRadius = UDim.new(0, 12)

-- Kapatma Butonu (X)
local CloseButton = Instance.new("ImageButton")
CloseButton.Name = "CloseButton"
CloseButton.Parent = TopBar
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.95, 0, 0.1, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Image = "rbxassetid://11293981586"
CloseButton.ImageColor3 = Color3.fromRGB(255, 100, 100)

CloseButton.MouseEnter:Connect(function()
    CloseButton.ImageColor3 = Color3.fromRGB(255, 50, 50)
end)

CloseButton.MouseLeave:Connect(function()
    CloseButton.ImageColor3 = Color3.fromRGB(255, 100, 100)
end)

CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    FloatingButton.Visible = true
end)

-- Sol Menü Paneli
local LeftMenu = Instance.new("Frame")
LeftMenu.Name = "LeftMenu"
LeftMenu.Parent = MainFrame
LeftMenu.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
LeftMenu.BorderSizePixel = 0
LeftMenu.Position = UDim2.new(0, 0, 0, 35)
LeftMenu.Size = UDim2.new(0, 150, 0, 365)

local LeftCorner = Instance.new("UICorner", LeftMenu)
LeftCorner.CornerRadius = UDim.new(0, 8)

-- Menü Butonları
local MenuButton1 = Instance.new("TextButton")
MenuButton1.Name = "MenuButton1"
MenuButton1.Parent = LeftMenu
MenuButton1.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
MenuButton1.BorderSizePixel = 0
MenuButton1.Position = UDim2.new(0.05, 0, 0.05, 0)
MenuButton1.Size = UDim2.new(0, 135, 0, 40)
MenuButton1.Font = Enum.Font.Arial
MenuButton1.Text = "Simple 1"
MenuButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
MenuButton1.TextSize = 16

local Button1Corner = Instance.new("UICorner", MenuButton1)
Button1Corner.CornerRadius = UDim.new(0, 6)

MenuButton1.MouseEnter:Connect(function()
    MenuButton1.BackgroundColor3 = Color3.fromRGB(70, 70, 80)
end)

MenuButton1.MouseLeave:Connect(function()
    MenuButton1.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
end)

local MenuButton2 = Instance.new("TextButton")
MenuButton2.Name = "MenuButton2"
MenuButton2.Parent = LeftMenu
MenuButton2.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
MenuButton2.BorderSizePixel = 0
MenuButton2.Position = UDim2.new(0.05, 0, 0.18, 0)
MenuButton2.Size = UDim2.new(0, 135, 0, 40)
MenuButton2.Font = Enum.Font.Arial
MenuButton2.Text = "Simple 2"
MenuButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
MenuButton2.TextSize = 16

local Button2Corner = Instance.new("UICorner", MenuButton2)
Button2Corner.CornerRadius = UDim.new(0, 6)

MenuButton2.MouseEnter:Connect(function()
    MenuButton2.BackgroundColor3 = Color3.fromRGB(70, 70, 80)
end)

MenuButton2.MouseLeave:Connect(function()
    MenuButton2.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
end)

local MenuButton3 = Instance.new("TextButton")
MenuButton3.Name = "MenuButton3"
MenuButton3.Parent = LeftMenu
MenuButton3.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
MenuButton3.BorderSizePixel = 0
MenuButton3.Position = UDim2.new(0.05, 0, 0.31, 0)
MenuButton3.Size = UDim2.new(0, 135, 0, 40)
MenuButton3.Font = Enum.Font.Arial
MenuButton3.Text = "Simple 3"
MenuButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
MenuButton3.TextSize = 16

local Button3Corner = Instance.new("UICorner", MenuButton3)
Button3Corner.CornerRadius = UDim.new(0, 6)

MenuButton3.MouseEnter:Connect(function()
    MenuButton3.BackgroundColor3 = Color3.fromRGB(70, 70, 80)
end)

MenuButton3.MouseLeave:Connect(function()
    MenuButton3.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
end)

-- İçerik Alanları
local Content1 = Instance.new("Frame")
Content1.Name = "Content1"
Content1.Parent = MainFrame
Content1.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Content1.BorderSizePixel = 0
Content1.Position = UDim2.new(0.26, 0, 0.09, 0)
Content1.Size = UDim2.new(0, 420, 0, 350)
Content1.Visible = true

local Content1Corner = Instance.new("UICorner", Content1)
Content1Corner.CornerRadius = UDim.new(0, 8)

local Content1Title = Instance.new("TextLabel")
Content1Title.Name = "Title"
Content1Title.Parent = Content1
Content1Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content1Title.BackgroundTransparency = 1
Content1Title.Position = UDim2.new(-0.29, 0.01, 0, 0)
Content1Title.Size = UDim2.new(0, 420, 0, 30)
Content1Title.Font = Enum.Font.ArialBold
Content1Title.Text = "ESP - CHAMS"
Content1Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Content1Title.TextSize = 20
Content1Title.TextXAlignment = Enum.TextXAlignment.Center

local Content1Desc = Instance.new("TextLabel")
Content1Desc.Name = "Description"
Content1Desc.Parent = Content1
Content1Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content1Desc.BackgroundTransparency = 1
Content1Desc.Position = UDim2.new(0, 0, 0.15, 0)
Content1Desc.Size = UDim2.new(0, 420, 0, 200)
Content1Desc.Font = Enum.Font.Arial
Content1Desc.Text = ""
Content1Desc.TextColor3 = Color3.fromRGB(200, 200, 200)
Content1Desc.TextSize = 14
Content1Desc.TextWrapped = true
Content1Desc.TextXAlignment = Enum.TextXAlignment.Center
Content1Desc.TextYAlignment = Enum.TextYAlignment.Top

-- Switch Butonu
local SwitchFrame = Instance.new("Frame")
SwitchFrame.Name = "SwitchFrame"
SwitchFrame.Parent = Content1
SwitchFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
SwitchFrame.BorderSizePixel = 0
SwitchFrame.Position = UDim2.new(0.11, 0, 0.08, 0)
SwitchFrame.Size = UDim2.new(0, 80, 0, 30)

local SwitchCorner = Instance.new("UICorner", SwitchFrame)
SwitchCorner.CornerRadius = UDim.new(0, 15)

local SwitchButton = Instance.new("TextButton")
SwitchButton.Name = "SwitchButton"
SwitchButton.Parent = SwitchFrame
SwitchButton.BackgroundColor3 = Color3.fromRGB(100, 100, 110)
SwitchButton.BorderSizePixel = 0
SwitchButton.Position = UDim2.new(0, 0, 0, 0)
SwitchButton.Size = UDim2.new(0, 40, 0, 30)
SwitchButton.Font = Enum.Font.Arial
SwitchButton.Text = ""
SwitchButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SwitchButton.TextSize = 14

local SwitchButtonCorner = Instance.new("UICorner", SwitchButton)
SwitchButtonCorner.CornerRadius = UDim.new(0, 15)

-- Switch Durumu
local switchOn = false

-- Switch Fonksiyonu
local function toggleSwitch()
    switchOn = not switchOn
    
    if switchOn then
        -- AÇIK durum
        SwitchButton:TweenPosition(UDim2.new(0.5, 0, 0, 0), "Out", "Quad", 0.3, true)
        SwitchFrame.BackgroundColor3 = Color3.fromRGB(46, 204, 113) -- Yeşil
        SwitchButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        
        game.StarterGui:SetCore("SendNotification", {
            Title = "Simple 1";
            Text = "ESP AÇIK!";
            Duration = 2;
        })
        
        -- ESP Scriptini Çalıştır
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- SIMPLE ESP - WORKS ON XENO, DELTA, FLUXUS, KRNL - NO CRASH
-- Press INSERT to toggle

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local ESPEnabled = true

-- Create ESP for a player
local function AddESP(player)
    if player == LocalPlayer then return end
    if player.Character then
        local root = player.Character:FindFirstChild("HumanoidRootPart")
        local head = player.Character:FindFirstChild("Head")
        if root and head then
            -- Name above head
            local billboard = Instance.new("BillboardGui")
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 100, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 3, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = head

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Size = UDim2.new(1, 0, 1, 0)
            nameLabel.BackgroundTransparency = 1
            nameLabel.Text = player.Name
            nameLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            nameLabel.TextStrokeTransparency = 0.5
            nameLabel.Font = Enum.Font.SourceSansBold
            nameLabel.TextSize = 18
            nameLabel.Parent = billboard

            -- Distance label
            local distLabel = Instance.new("TextLabel")
            distLabel.Size = UDim2.new(1, 0, 1, 0)
            distLabel.Position = UDim2.new(0, 0, 1, 0)
            distLabel.BackgroundTransparency = 1
            distLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
            distLabel.TextStrokeTransparency = 0.5
            distLabel.Font = Enum.Font.SourceSans
            distLabel.TextSize = 16
            distLabel.Parent = billboard

            -- Update distance
            RunService.RenderStepped:Connect(function()
                if not ESPEnabled or not player.Character or not LocalPlayer.Character then
                    billboard.Enabled = false
                    return
                end
                local lpRoot = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if lpRoot and root then
                    local dist = (lpRoot.Position - root.Position).Magnitude
                    distLabel.Text = math.floor(dist) .. "m"
                    billboard.Enabled = true
                end
            end)
        end
    end
end

-- Add ESP to all players
for _, player in pairs(Players:GetPlayers()) do
    AddESP(player)
end

-- Add for new players
Players.PlayerAdded:Connect(AddESP)

-- Toggle with Insert
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Insert then
        ESPEnabled = not ESPEnabled
        print("ESP Toggled:", ESPEnabled and "ON" or "OFF")
    end
end)

print("Simple ESP Loaded! Press INSERT to toggle.")
        
    else
        -- KAPALI durum
        SwitchButton:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.3, true)
        SwitchFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 70) -- Gri
        SwitchButton.BackgroundColor3 = Color3.fromRGB(100, 100, 110)
        
        game.StarterGui:SetCore("SendNotification", {
            Title = "Simple 1";
            Text = "ESP KAPALI!";
            Duration = 2;
        })
        
        -- ESP'yi Kapat
        pcall(function()
            -- Bağlantıları kes
            if _G.ESPPlayerAdded then
                _G.ESPPlayerAdded:Disconnect()
                _G.ESPPlayerAdded = nil
            end
            
            _G.ESPColorChange = nil
            
            -- Tüm highlightları temizle
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    local highlight = player.Character:FindFirstChildOfClass("Highlight")
                    if highlight then
                        highlight:Destroy()
                    end
                end
            end
        end)
    end
end

-- Switch Tıklama
SwitchButton.MouseButton1Click:Connect(toggleSwitch)
SwitchFrame.MouseButton1Click:Connect(toggleSwitch)

-- Switch Hover Efektleri
SwitchButton.MouseEnter:Connect(function()
    if not switchOn then
        SwitchButton.BackgroundColor3 = Color3.fromRGB(120, 120, 130)
    end
end)

SwitchButton.MouseLeave:Connect(function()
    if not switchOn then
        SwitchButton.BackgroundColor3 = Color3.fromRGB(100, 100, 110)
    end
end)

-- Switch Label
local SwitchLabel = Instance.new("TextLabel")
SwitchLabel.Name = "SwitchLabel"
SwitchLabel.Parent = Content1
SwitchLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SwitchLabel.BackgroundTransparency = 1
SwitchLabel.Position = UDim2.new(0.85, 0, 0.80, 0)
SwitchLabel.Size = UDim2.new(0, 80, 0, 15)
SwitchLabel.Font = Enum.Font.Arial
SwitchLabel.Text = "ESP"
SwitchLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SwitchLabel.TextSize = 12
SwitchLabel.TextXAlignment = Enum.TextXAlignment.Center

local Content2 = Instance.new("Frame")
Content2.Name = "Content2"
Content2.Parent = MainFrame
Content2.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Content2.BorderSizePixel = 0
Content2.Position = UDim2.new(0.26, 0, 0.09, 0)
Content2.Size = UDim2.new(0, 420, 0, 350)
Content2.Visible = false

local Content2Corner = Instance.new("UICorner", Content2)
Content2Corner.CornerRadius = UDim.new(0, 8)

local Content2Title = Instance.new("TextLabel")
Content2Title.Name = "Title"
Content2Title.Parent = Content2
Content2Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content2Title.BackgroundTransparency = 1
Content2Title.Position = UDim2.new(0, 0, 0, 10)
Content2Title.Size = UDim2.new(0, 420, 0, 30)
Content2Title.Font = Enum.Font.ArialBold
Content2Title.Text = "ESP - CHAMS"
Content2Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Content2Title.TextSize = 20
Content2Title.TextXAlignment = Enum.TextXAlignment.Center

local Content2Desc = Instance.new("TextLabel")
Content2Desc.Name = "Description"
Content2Desc.Parent = Content2
Content2Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content2Desc.BackgroundTransparency = 1
Content2Desc.Position = UDim2.new(0, 0, 0.15, 0)
Content2Desc.Size = UDim2.new(0, 420, 0, 300)
Content2Desc.Font = Enum.Font.Arial
Content2Desc.Text = ""
Content2Desc.TextColor3 = Color3.fromRGB(200, 200, 200)
Content2Desc.TextSize = 14
Content2Desc.TextWrapped = true
Content2Desc.TextXAlignment = Enum.TextXAlignment.Center
Content2Desc.TextYAlignment = Enum.TextYAlignment.Top

local Content3 = Instance.new("Frame")
Content3.Name = "Content3"
Content3.Parent = MainFrame
Content3.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Content3.BorderSizePixel = 0
Content3.Position = UDim2.new(0.26, 0, 0.09, 0)
Content3.Size = UDim2.new(0, 420, 0, 350)
Content3.Visible = false

local Content3Corner = Instance.new("UICorner", Content3)
Content3Corner.CornerRadius = UDim.new(0, 8)

local Content3Title = Instance.new("TextLabel")
Content3Title.Name = "Title"
Content3Title.Parent = Content3
Content3Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content3Title.BackgroundTransparency = 1
Content3Title.Position = UDim2.new(0, 0, 0, 10)
Content3Title.Size = UDim2.new(0, 420, 0, 30)
Content3Title.Font = Enum.Font.ArialBold
Content3Title.Text = ""
Content3Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Content3Title.TextSize = 20
Content3Title.TextXAlignment = Enum.TextXAlignment.Center

local Content3Desc = Instance.new("TextLabel")
Content3Desc.Name = "Description"
Content3Desc.Parent = Content3
Content3Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content3Desc.BackgroundTransparency = 1
Content3Desc.Position = UDim2.new(0, 0, 0.15, 0)
Content3Desc.Size = UDim2.new(0, 420, 0, 300)
Content3Desc.Font = Enum.Font.Arial
Content3Desc.Text = ""
Content3Desc.TextColor3 = Color3.fromRGB(200, 200, 200)
Content3Desc.TextSize = 14
Content3Desc.TextWrapped = true
Content3Desc.TextXAlignment = Enum.TextXAlignment.Center
Content3Desc.TextYAlignment = Enum.TextYAlignment.Top

-- Menü Geçiş Fonksiyonları
MenuButton1.MouseButton1Click:Connect(function()
    Content1.Visible = true
    Content2.Visible = false
    Content3.Visible = false
    
    MenuButton1.BackgroundColor3 = Color3.fromRGB(80, 80, 90)
    MenuButton2.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    MenuButton3.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
end)

MenuButton2.MouseButton1Click:Connect(function()
    Content1.Visible = false
    Content2.Visible = true
    Content3.Visible = false
    
    MenuButton1.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    MenuButton2.BackgroundColor3 = Color3.fromRGB(80, 80, 90)
    MenuButton3.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
end)

MenuButton3.MouseButton1Click:Connect(function()
    Content1.Visible = false
    Content2.Visible = false
    Content3.Visible = true
    
    MenuButton1.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    MenuButton2.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    MenuButton3.BackgroundColor3 = Color3.fromRGB(80, 80, 90)
end)

-- Drag Fonksiyonu
local UserInputService = game:GetService("UserInputService")
local dragging = false
local dragStart = nil
local startPos = nil

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- Floating Buton (Minimize Durumu)
local FloatingButton = Instance.new("ImageButton")
FloatingButton.Name = "FloatingButton"
FloatingButton.Parent = YeniGUI
FloatingButton.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
FloatingButton.BorderSizePixel = 0
FloatingButton.Position = UDim2.new(0.02, 0, 0.1, 0)
FloatingButton.Size = UDim2.new(0, 50, 0, 50)
FloatingButton.Image = "rbxassetid://11293981586"
FloatingButton.ImageColor3 = Color3.fromRGB(100, 150, 255)
FloatingButton.Visible = false

local FloatingCorner = Instance.new("UICorner", FloatingButton)
FloatingCorner.CornerRadius = UDim.new(0, 25)

FloatingButton.MouseEnter:Connect(function()
    FloatingButton.ImageColor3 = Color3.fromRGB(80, 130, 235)
    FloatingButton.Size = UDim2.new(0, 55, 0, 55)
end)

FloatingButton.MouseLeave:Connect(function()
    FloatingButton.ImageColor3 = Color3.fromRGB(100, 150, 255)
    FloatingButton.Size = UDim2.new(0, 50, 0, 50)
end)

FloatingButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    FloatingButton.Visible = false
end)

-- Floating Butonu Drag Yapılabilir
local floatingDragging = false
local floatingDragStart = nil
local floatingStartPos = nil

FloatingButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        floatingDragging = true
        floatingDragStart = input.Position
        floatingStartPos = FloatingButton.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if floatingDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - floatingDragStart
        FloatingButton.Position = UDim2.new(floatingStartPos.X.Scale, floatingStartPos.X.Offset + delta.X, floatingStartPos.Y.Scale, floatingStartPos.Y.Offset + delta.Y)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        floatingDragging = false
    end
end)

-- Başlangıçta ilk menüyü aktif et
MenuButton1.BackgroundColor3 = Color3.fromRGB(80, 80, 90)

print("Yeni GUI başarıyla yüklendi! - CremiWorld")

-- Chams kapatma scripti

-- Kontroller için global tablo
_G.ESP_Drawings = _G.ESP_Drawings or {}
_G.ESP_Connection = _G.ESP_Connection or nil
_G.ESP_Enabled = false

-- Eğer önceki çizimler varsa sil
if _G.ESP_Drawings then
    for _, d in pairs(_G.ESP_Drawings) do
        pcall(function()
            d:Remove()
        end)
    end
    _G.ESP_Drawings = {}
end

-- Eğer RenderStepped bağlantısı varsa kapat
if _G.ESP_Connection then
    _G.ESP_Connection:Disconnect()
    _G.ESP_Connection = nil
end

-- Chams için yüklenmiş herhangi bir model veya efekt varsa sil
for _, player in pairs(game:GetService("Players"):GetPlayers()) do
    local char = player.Character
    if char then
        for _, part in pairs(char:GetChildren()) do
            if part:IsA("BasePart") then
                part.Material = Enum.Material.Plastic
                part.Color = Color3.new(1,1,1) -- default beyaz
                part.Reflectance = 0
            end
        end
    end
end

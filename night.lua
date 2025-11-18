local player = game:GetService("Players").LocalPlayer
local lighting = game:GetService("Lighting")
local old = lighting:FindFirstChild("NightVision")
if old then old:Destroy() end

local nv = Instance.new("ColorCorrectionEffect", lighting)
nv.Name = "NightVision"
nv.TintColor = Color3.fromRGB(150, 255, 150)
nv.Contrast = 0.1
nv.Brightness = 0.05

print("[Night Vision] Enabled successfully!")

-- Advanced Obfuscation
local function encStr(s) return (s:gsub(".", function(c) return "\\" .. c:byte() end)) end
local function decStr(s) return (s:gsub("\\(%d+)", function(n) return string.char(n) end)) end

local a, b, c, d = game:GetService(decStr("\\80\\108\\97\\121\\101\\114\\115")), game:GetService(decStr("\\82\\101\\112\\108\\105\\99\\97\\116\\101\\100\\83\\116\\111\\114\\97\\103\\101")), game:GetService(decStr("\\85\\115\\101\\114\\73\\110\\112\\117\\116\\83\\101\\114\\118\\105\\99\\101")), game:GetService(decStr("\\84\\101\\108\\101\\112\\111\\114\\116\\83\\101\\114\\118\\105\\99\\101"))
local e = a.LocalPlayer
local f = Instance.new("ScreenGui")
f.Parent = game.CoreGui
local g = Instance.new("Frame")
g.Size, g.Position, g.BackgroundColor3, g.BorderSizePixel, g.Active, g.Draggable, g.Parent = UDim2.new(0, 400, 0, 300), UDim2.new(0.5, -200, 0.5, -150), Color3.fromRGB(20, 20, 20), 0, true, true, f
local h = Instance.new("TextLabel")
h.Size, h.BackgroundTransparency, h.Text, h.TextColor3, h.TextSize, h.Font, h.Parent = UDim2.new(1, 0, 0, 40), 1, "DP Hub 🀁 --- The $1,000,000 Glass Bridge", Color3.fromRGB(255, 0, 0), 18, Enum.Font.GothamBold, g
local i = Instance.new("UIStroke")
i.Color, i.Thickness, i.Parent = Color3.fromRGB(255, 0, 0), 2, g
local q = Instance.new("TextLabel")
q.Size, q.Position, q.BackgroundTransparency, q.Text, q.TextColor3, q.TextSize, q.Font, q.Parent = UDim2.new(1, 0, 0, 20), UDim2.new(0, 0, 0.95, 0), 1, "Made by CoolXplo", Color3.fromRGB(255, 255, 255), 14, Enum.Font.GothamBold, g

-- Anti-Tampering
local function antiTamper() while true do if not game or not a or not b then while true do end end task.wait(1) end end
task.spawn(antiTamper)

-- Secure Function Calls
local function protectedCall(func) local success, result = pcall(func) if not success then while true do end end return result end

-- Anti-AFK Button
local j = Instance.new("TextButton")
j.Size, j.Position, j.BackgroundColor3, j.Text, j.TextColor3, j.TextSize, j.Font, j.Parent = UDim2.new(0.8, 0, 0, 30), UDim2.new(0.1, 0, 0.2, 0), Color3.fromRGB(50, 50, 50), "Enable Anti-AFK", Color3.fromRGB(255, 255, 255), 14, Enum.Font.GothamBold, g
j.MouseButton1Click:Connect(function()
    protectedCall(function()
        local k = game:GetService("VirtualUser")
        e.Idled:Connect(function()
            k:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            task.wait(1)
            k:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
        j.Text = "Anti-AFK Enabled!"
    end)
end)

-- Infinite Money Button
local l, m = false, Instance.new("TextButton")
m.Size, m.Position, m.BackgroundColor3, m.Text, m.TextColor3, m.TextSize, m.Font, m.Parent = UDim2.new(0.8, 0, 0, 30), UDim2.new(0.1, 0, 0.4, 0), Color3.fromRGB(50, 50, 50), "Get Infinite Money", Color3.fromRGB(255, 255, 255), 14, Enum.Font.GothamBold, g
m.MouseButton1Click:Connect(function()
    protectedCall(function()
        l = true
        while l do
            b:WaitForChild("GiveClaimMoney"):FireServer(e)
            task.wait(0.1)
        end
    end)
end)

-- Copyable Discord Link Button
local n = Instance.new("TextButton")
n.Size, n.Position, n.BackgroundColor3, n.Text, n.TextColor3, n.TextSize, n.Font, n.Parent = UDim2.new(0.8, 0, 0, 30), UDim2.new(0.1, 0, 0.6, 0), Color3.fromRGB(30, 30, 30), "Copy Discord Link", Color3.fromRGB(255, 255, 255), 14, Enum.Font.GothamBold, g
n.MouseButton1Click:Connect(function()
    protectedCall(function()
        setclipboard("https://discord.gg/kcbxTTuTYw")
        local p = Instance.new("TextLabel")
        p.Size, p.Position, p.BackgroundTransparency, p.Text, p.TextColor3, p.TextSize, p.Font, p.Parent = UDim2.new(0.8, 0, 0, 20), UDim2.new(0.1, 0, 0.85, 0), 1, "Discord link copied!", Color3.fromRGB(0, 255, 0), 14, Enum.Font.GothamBold, g
        task.wait(2)
        p:Destroy()
    end)
end)

-- Server Hop Button
local o = Instance.new("TextButton")
o.Size, o.Position, o.BackgroundColor3, o.Text, o.TextColor3, o.TextSize, o.Font, o.Parent = UDim2.new(0.8, 0, 0, 30), UDim2.new(0.1, 0, 0.8, 0), Color3.fromRGB(50, 50, 50), "Server Hop", Color3.fromRGB(255, 255, 255), 14, Enum.Font.GothamBold, g
o.MouseButton1Click:Connect(function()
    protectedCall(function()
        d:Teleport(game.PlaceId, e)
    end)
end)

-- Close Button
local r = Instance.new("TextButton")
r.Size, r.Position, r.BackgroundColor3, r.Text, r.TextColor3, r.TextSize, r.Font, r.Parent = UDim2.new(0, 30, 0, 30), UDim2.new(1, -35, 0, 5), Color3.fromRGB(200, 0, 0), "X", Color3.fromRGB(255, 255, 255), 16, Enum.Font.GothamBold, g
r.MouseButton1Click:Connect(function()
    protectedCall(function()
        f:Destroy()
    end)
end)

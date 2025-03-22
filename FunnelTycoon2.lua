--[[

DP HUB  POWERED SCRIPTS

This made by DP (DEXAR /DEVS PARADISE)  HUB Team 
Modification of the script, including attempting to bypass
or crack the script for any reason is not allowed.

Copyright © 2025 DP Hub - Script. All Rights Reserved.

]]--
local A,B=game:GetService('Players').LocalPlayer,Instance.new('ScreenGui')B.Parent=A:WaitForChild('PlayerGui')B.Name='DPHubGUI'
local C=Instance.new('Frame')C.Size=UDim2.new(0,250,0,350)C.Position=UDim2.new(0.5,-125,0.3,0)C.BackgroundColor3=Color3.fromRGB(30,30,30)C.BorderSizePixel=2
C.Draggable=true C.Active=true C.Parent=B
local D=Instance.new('TextLabel')D.Size=UDim2.new(1,0,0,30)D.Text=string.reverse('2TF-\240\159\144\137 BUH PD')
D.TextColor3=Color3.fromRGB(255,255,255)D.BackgroundColor3=Color3.fromRGB(0,0,0)D.Font=Enum.Font.SourceSansBold D.TextSize=20 D.Parent=C
local E=Instance.new('TextButton')E.Size=UDim2.new(0,30,0,30)E.Position=UDim2.new(1,-30,0,0)E.Text='X'
E.TextColor3=Color3.fromRGB(255,255,255)E.BackgroundColor3=Color3.fromRGB(200,0,0)E.Font=Enum.Font.SourceSansBold E.TextSize=20
E.Parent=C E.MouseButton1Click:Connect(function()B:Destroy()end)
local function F(G,H,I)local J=Instance.new('TextButton')J.Size=UDim2.new(1,-20,0,40)J.Position=UDim2.new(0,10,0,H)J.Text=G
J.TextColor3=Color3.fromRGB(0,0,0)J.BackgroundColor3=Color3.fromRGB(0,255,0)J.Font=Enum.Font.SourceSansBold J.TextSize=16 J.Parent=C
J.MouseButton1Click:Connect(I)return J end
local function K(L)local M=Instance.new('TextLabel')M.Size=UDim2.new(0,250,0,40)M.Position=UDim2.new(0.5,-125,0.1,0)M.Text=L
M.TextColor3=Color3.fromRGB(255,255,255)M.BackgroundColor3=Color3.fromRGB(0,0,0)M.Font=Enum.Font.SourceSansBold M.TextSize=18 M.Parent=B
task.spawn(function()wait(2)M:Destroy()end)end
F(' Activate Infinite Money',40,function()K('Money Boost Engaged!')
local N={{Money=math.huge,ToCollect=0},'hello world'}
game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('PayPlayer'):FireServer(unpack(N))end)
F(' Prevent AFK Kick',90,function()K('Anti-AFK Active!')local O=game:GetService('VirtualUser')A.Idled:Connect(function()
O:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)O:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)end)
F(' Enable Infinite Health',140,function()K('God Mode Activated!')local P=A.Character if P and P:FindFirstChild('Humanoid') then
P.Humanoid.Health=math.huge P.Humanoid:GetPropertyChangedSignal('Health'):Connect(function()P.Humanoid.Health=math.huge end)end end)
F(' Quick Server Hop',190,function()K('Jumping to a New Server...')local Q=game:GetService('TeleportService')local R=game:GetService('HttpService'):JSONDecode(
game:HttpGet('https://games.roblox.com/v1/games/'..game.PlaceId..'/servers/Public?sortOrder=Asc&limit=100'))for _,S in ipairs(R.data)do
if S.playing<S.maxPlayers then Q:TeleportToPlaceInstance(game.PlaceId,S.id,A)break end end end)
F(' Copy Discord Invite',240,function()K('Invite Link Copied!')setclipboard('https://discord.gg/kcbxTTuTYw')end)
local T=Instance.new('TextLabel')T.Size=UDim2.new(1,-20,0,40)T.Position=UDim2.new(0,10,0,290)T.Text=' Crafted by CoolXplo'
T.TextColor3=Color3.fromRGB(255,255,255)T.BackgroundTransparency=1 T.Font=Enum.Font.SourceSansBold T.TextSize=16 T.Parent=C

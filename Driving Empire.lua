if game.PlaceId ~= 3351674303 then
    return warn("This script only works in Driving Empire.")
end

local function fetch(url)
    if http and http.request then
        return http.request({Url = url, Method = "GET"}).Body
    elseif syn and syn.request then
        return syn.request({Url = url, Method = "GET"}).Body
    elseif request then
        return request({Url = url, Method = "GET"}).Body
    elseif http_request then
        return http_request({Url = url, Method = "GET"}).Body
    else
        warn("HTTP request not supported by this executor")
        return nil
    end
end

local success, library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3"))()
end)
if not success then
    warn("Failed to load UI library. Your executor may not support HTTP requests.")
end

local w = library:CreateWindow("DP HUB \240\159\144\137") -- Creates the window

local a = w:CreateFolder("Server")
local b = w:CreateFolder("Main")-- Creates the folder(U will put here your buttons,etc)
local c = w:CreateFolder("Credits")

a:Button("View Logs", function()
    -- Logging Script
    local Players = game:GetService("Players")
    local HttpService = game:GetService("HttpService")
    local TPService = game:GetService("TeleportService")
    local RunService = game:GetService("RunService")

    -- Create UI
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local PlayerList = Instance.new("TextLabel")
    local ServerInfo = Instance.new("TextLabel")
    local CloseButton = Instance.new("TextButton")

    -- Configure UI
    ScreenGui.Parent = game:GetService("CoreGui")
    Frame.Parent = ScreenGui
    Frame.Size = UDim2.new(0, 350, 0, 250)
    Frame.Position = UDim2.new(0.5, -175, 0.5, -125)
    Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Frame.BorderSizePixel = 2

    Title.Parent = Frame
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Title.Text = "Server Info"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.Font = Enum.Font.SourceSans
    Title.TextSize = 20

    ServerInfo.Parent = Frame
    ServerInfo.Size = UDim2.new(1, -10, 0, 60)
    ServerInfo.Position = UDim2.new(0, 5, 0, 40)
    ServerInfo.TextColor3 = Color3.new(1, 1, 1)
    ServerInfo.TextWrapped = true
    ServerInfo.Font = Enum.Font.SourceSans
    ServerInfo.TextSize = 14

    PlayerList.Parent = Frame
    PlayerList.Size = UDim2.new(1, -10, 0, 100)
    PlayerList.Position = UDim2.new(0, 5, 0, 105)
    PlayerList.TextColor3 = Color3.new(1, 1, 1)
    PlayerList.TextWrapped = true
    PlayerList.Font = Enum.Font.SourceSans
    PlayerList.TextSize = 14

    CloseButton.Parent = Frame
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Position = UDim2.new(1, -35, 0, 0)
    CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.new(1, 1, 1)
    CloseButton.Font = Enum.Font.SourceSansBold
    CloseButton.TextSize = 18

    -- Function to update UI
    local lastTick = tick()
    local function UpdateUI()
        local players = Players:GetPlayers()
        local playerNames = {}

        for _, player in ipairs(players) do
            table.insert(playerNames, player.Name)
        end

        -- Calculate FPS
        local fps = math.floor(1 / (tick() - lastTick))
        lastTick = tick()

        PlayerList.Text = "Players (" .. #players .. "/" .. Players.MaxPlayers .. "):\n" .. table.concat(playerNames, "\n\n")
        ServerInfo.Text = string.format(
            "Server ID: %s\nGame ID: %s\nMax Players: %d\nPing: %d ms\nFPS: %d",
            game.JobId, game.PlaceId, Players.MaxPlayers, math.floor(Players.LocalPlayer:GetNetworkPing() * 1000), fps
        )
    end

    -- Update on player join/leave and FPS dynamically
    Players.PlayerAdded:Connect(UpdateUI)
    Players.PlayerRemoving:Connect(UpdateUI)
    RunService.RenderStepped:Connect(UpdateUI)

    UpdateUI()

    -- Close Button Function
    CloseButton.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)
end)

local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local PlaceID = game.PlaceId
local ServerHopAPI = "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Desc&limit=100"

function ServerHop()
    local success, response = pcall(function()
        return HttpService:JSONDecode(game:HttpGet(ServerHopAPI))
    end)

    if success and response and response.data then
        for _, server in pairs(response.data) do
            if server.playing < server.maxPlayers then
                TeleportService:TeleportToPlaceInstance(PlaceID, server.id, game.Players.LocalPlayer)
                return
            end
        end
    end

    warn("No available server found!")
end

a:Button("Server Hop", function()
    ServerHop()
end)

b:Label("Driving Empire \240\159\143\142\239\184\143",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

--Vars
LocalPlayer = game:GetService("Players").LocalPlayer
Camera = workspace.CurrentCamera
VirtualUser = game:GetService("VirtualUser")
MarketplaceService = game:GetService("MarketplaceService")

--Get Current Vehicle
function GetCurrentVehicle()
    return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.SeatPart and LocalPlayer.Character.Humanoid.SeatPart.Parent
end

--Notification Handler
function SendNotification(Title, Message, Duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title;
        Text = Message;
        Duration = Duration;
    })
end

--Regular TP
function TP(cframe)
    GetCurrentVehicle():SetPrimaryPartCFrame(cframe)
end

--Velocity TP
function VelocityTP(cframe)
    TeleportSpeed = math.random(200, 600)
    Car = GetCurrentVehicle()
    local BodyGyro = Instance.new("BodyGyro", Car.PrimaryPart)
    BodyGyro.P = 5000
    BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    BodyGyro.CFrame = Car.PrimaryPart.CFrame
    local BodyVelocity = Instance.new("BodyVelocity", Car.PrimaryPart)
    BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    BodyVelocity.Velocity = CFrame.new(Car.PrimaryPart.Position, cframe.p).LookVector * TeleportSpeed
    wait((Car.PrimaryPart.Position - cframe.p).Magnitude / TeleportSpeed)
    BodyVelocity.Velocity = Vector3.new()
    wait(0.1)
    BodyVelocity:Destroy()
    BodyGyro:Destroy()
end

--Auto Farm
StartPosition = CFrame.new(Vector3.new(811.013184, 27.3421249, 2203.55542), Vector3.new(-187, 25.7, 1982))
EndPosition = CFrame.new(Vector3.new(-76.4760208, 27.7194824, 1993.84229), Vector3.new(-187, 25.7, 1982))
AutoFarmFunc = coroutine.create(function()
    while wait() do
        if not AutoFarm then
            AutoFarmRunning = false
            coroutine.yield()
        end
        AutoFarmRunning = true
        pcall(function()
            if not GetCurrentVehicle() and tick() - (LastNotif or 0) > 5 then
                LastNotif = tick()
                SendNotification("Vehicle Required !!", "Please Enter A Vehicle!")
            else
                TP(StartPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                VelocityTP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                TP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                VelocityTP(StartPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
            end
        end)
    end
end)

-- UI Button for AutoFarm
b:Button("Start AutoFarm", function()
    print("AutoFarm Started")
    AutoFarm = true
    if not AutoFarmRunning then
        coroutine.resume(AutoFarmFunc)
    end
end)

-- UI Button to Toggle Anti-AFK
b:Toggle("Toggle Anti-AFK", function()
    AntiAFK = not AntiAFK  -- Toggle state
    print("Anti-AFK:", AntiAFK)

    if AntiAFK then
        SendNotification("Anti-AFK Activated", "You are now protected. Go get some sleep!")
        task.spawn(SimulateActivity)
    else
        SendNotification("Anti-AFK Deactivated", "Be careful! You might get kicked.")
    end
end)

-- Services
local VirtualUser = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

-- Notification function
function SendNotification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = 3;
    })
end

-- Function to simulate random movements
function SimulateActivity()
    while AntiAFK do
        -- Random delay between actions
        task.wait(math.random(30, 90))

        -- Simulate player movement
        local keys = {Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D, Enum.KeyCode.Space}
        local randomKey = keys[math.random(1, #keys)]
        
        VirtualUser:SetKeyDown(randomKey.Value)  -- Simulate key press
        task.wait(math.random(0.1, 0.3))  -- Hold key for a short time
        VirtualUser:SetKeyUp(randomKey.Value)  -- Release key

        -- Simulate camera movement (only if safe)
        if workspace.CurrentCamera then
            local cam = workspace.CurrentCamera
            cam.CFrame = cam.CFrame * CFrame.Angles(0, math.rad(math.random(-15, 15)), 0)
        end
        
        -- Simulate mouse movement/click
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(math.random(100, 400), math.random(100, 400)))

        -- Stop if Anti-AFK is turned off
        if not AntiAFK then
            break
        end
    end
end

-- Prevent being kicked for idling
LocalPlayer.Idled:Connect(function()
    if AntiAFK then
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0))
    end
end)

print("Advanced Anti-AFK Ready!")

c:Label("Founder & Co-Founder", {
    TextSize = 20;
    TextColor = Color3.fromRGB(255, 255, 255);
    BgColor = Color3.fromRGB(69, 69, 69);
})

c:Label("Founder: PLO_MEX \nCo-Founder: Iamunknown77", {
    TextSize = 16;
    TextColor = Color3.fromRGB(200, 200, 200);
    BgColor = Color3.fromRGB(50, 50, 50);
})

c:Label("Thank You!", {
    TextSize = 20;
    TextColor = Color3.fromRGB(255, 255, 255);
    BgColor = Color3.fromRGB(69, 69, 69);
})

c:Label("Thanks for choosing DP HUB! Don't forget to join our Discord server for updates and support!", {
    TextSize = 16;
    TextColor = Color3.fromRGB(200, 200, 200);
    BgColor = Color3.fromRGB(50, 50, 50);
})

c:Button("Copy Discord Link", function()
    setclipboard("https://discord.gg/zaGzhr8Pb4") 
    print("Discord link copied to clipboard!")
end)

b:DestroyGui()

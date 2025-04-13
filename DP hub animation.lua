local coreGui = cloneref(game:GetService("CoreGui"))
coreGui.CallDialogScreen.Enabled = true

local callDialog = coreGui.CallDialogScreen.CallDialog.AlertContents
local title = callDialog.TitleContainer.TitleArea.Title
local bodyText = callDialog.MiddleContent.Content.BodyText
local button1 = callDialog.Footer.Buttons["1"]
local button1Text = button1.ButtonContent.ButtonMiddleContent.Text

title.Size = UDim2.new(0, 100, 0, 26)
title.Text = "DP Hub animation"
title.TextScaled = true
bodyText.Text = "Made By CoolxPLo"

local titleTextSize = title.TextSize


button1Text.Text = "Continue"
button1Text.TextSize = bodyText.TextSize
button1Text.Size = button1.Size


button1.MouseButton1Click:Wait()
coreGui.CallDialogScreen.Enabled = false


-- Cross (X) Button
local closeBtn = Instance.new("TextButton", frame)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "X"
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)
closeBtn.MouseButton1Click:Connect(function()
	frame.Visible = false
end)

-- Toggle GUI with B key
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.B then
		frame.Visible = not frame.Visible
	end
end)

-- Reset Animation Button
local resetBtn = Instance.new("TextButton", frame)
resetBtn.Size = UDim2.new(0.95, 0, 0.15, 0)
resetBtn.Position = UDim2.new(0.025, 0, 0.92, 0)
resetBtn.Text = "Reset Animation"
resetBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
resetBtn.TextColor3 = Color3.new(1, 1, 1)
resetBtn.TextScaled = true
resetBtn.Font = Enum.Font.GothamMedium
Instance.new("UICorner", resetBtn).CornerRadius = UDim.new(0, 6)

resetBtn.MouseButton1Click:Connect(function()
	local animate = char:FindFirstChild("Animate")
	if animate then
		animate:Destroy()
	end
	local newAnimate = script:FindFirstChild("DefaultAnimate"):Clone()
	newAnimate.Parent = char
end)


local animSets = {
	Vampire = {
		idle = "1083445855",
		walk = "1083473930",
		run = "1083462077",
		jump = "1083455352",
		climb = "1083439238",
		fall = "1083443587"
	},
	Ninja = {
		idle = "656117400",
		walk = "656121766",
		run = "656118852",
		jump = "656117878",
		climb = "656114359",
		fall = "656115606"
	},
	ZombieClassic = {
		idle = "616158929",
		walk = "616168032",
		run = "616163682",
		jump = "616161997",
		climb = "616156119",
		fall = "616157476"
	},
	Mage = {
		idle = "707742142",
		walk = "707897309",
		run = "707861613",
		jump = "707853694",
		climb = "707826056",
		fall = "707829716"
	},
	Ghost = {
		idle = "616006778",
		walk = "616010382",
		run = "616013216",
		jump = "616008936",
		climb = "616003713",
		fall = "616005863"
	},
	Elder = {
		idle = "845397899",
		walk = "845403856",
		run = "845386501",
		jump = "845398858",
		climb = "845392038",
		fall = "845396048"
	},
	Levitation = {
		idle = "616006778",
		walk = "616013216",
		run = "616010382",
		jump = "616008936",
		climb = "616003713",
		fall = "616005863"
	},
	Astronaut = {
		idle = "891621366",
		walk = "891667138",
		run = "891636393",
		jump = "891627522",
		climb = "891609353",
		fall = "891617961"
	},
	Cartoon = {
		idle = "742637544",
		walk = "742640026",
		run = "742638842",
		jump = "742637942",
		climb = "742636889",
		fall = "742637151"
	},
	Pirate = {
		idle = "750781874",
		walk = "750785693",
		run = "750783738",
		jump = "750782230",
		climb = "750779899",
		fall = "750780242"
	},
	Sneaky = {
		idle = "1132473842",
		walk = "1132510133",
		run = "1132494274",
		jump = "1132489853",
		climb = "1132461372",
		fall = "1132469004"
	},
	Toy = {
		idle = "782841498",
		walk = "782843345",
		run = "782842708",
		jump = "782847020",
		climb = "782843869",
		fall = "782846423"
	},
	Knight = {
		idle = "657595757",
		walk = "657552124",
		run = "657564596",
		jump = "658409194",
		climb = "658360781",
		fall = "657600338"
	},
	Confident = {
		idle = "1069977950",
		walk = "1070017263",
		run = "1070001516",
		jump = "1069984524",
		climb = "1069946257",
		fall = "1069973677"
	},
	Popstar = {
		idle = "1212900985",
		walk = "1212980338",
		run = "1212980348",
		jump = "1212954642",
		climb = "1213044953",
		fall = "1212900995"
	},
	Princess = {
		idle = "941003647",
		walk = "941028902",
		run = "941015281",
		jump = "941008832",
		climb = "940996062",
		fall = "941000007"
	},
	Cowboy = {
		idle = "1014390418",
		walk = "1014421541",
		run = "1014401683",
		jump = "1014394726",
		climb = "1014380606",
		fall = "1014384571"
	},
	Patrol = {
		idle = "1149612882",
		walk = "1151231493",
		run = "1150967949",
		jump = "1150944216",
		climb = "1148811837",
		fall = "1148863382"
	},
	ZombieFE = {
		idle = "3489171152",
		walk = "3489174223",
		run = "3489173414",
		jump = "616161997",
		climb = "616156119",
		fall = "616157476"
	}
}


local animNames = {}
for name in pairs(animSets) do
	table.insert(animNames, name)
end

local currentIndex = 1

local player = game.Players.LocalPlayer
local char, humanoid

local function updateCharacter()
	char = player.Character or player.CharacterAdded:Wait()
	humanoid = char:WaitForChild("Humanoid")
end

player.CharacterAdded:Connect(updateCharacter)
updateCharacter()


-- UI Setup
local camera = workspace.CurrentCamera
local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))

local viewportSize = camera.ViewportSize
local frameWidth = viewportSize.X * 0.3
local frameHeight = viewportSize.Y * 0.25

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, frameWidth, 0, frameHeight)
frame.Position = UDim2.new(0.5, -frameWidth / 2, 0.5, -frameHeight / 2)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BackgroundTransparency = 0.3
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.Draggable = true
frame.Active = true

local uicorner = Instance.new("UICorner", frame)
uicorner.CornerRadius = UDim.new(0, 10)


local closeBtn = Instance.new("TextButton", frame)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "X"
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)
closeBtn.MouseButton1Click:Connect(function()
	frame.Visible = false
end)


-- Emote name label
local textLabel = Instance.new("TextLabel", frame)
textLabel.Size = UDim2.new(0.6, 0, 0.35, 0)
textLabel.Position = UDim2.new(0.2, 0, 0.15, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
textLabel.BackgroundTransparency = 0.2
textLabel.TextScaled = true
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.GothamBold
Instance.new("UICorner", textLabel).CornerRadius = UDim.new(0, 6)

-- Previous button
local prevBtn = Instance.new("TextButton", frame)
prevBtn.Size = UDim2.new(0.15, 0, 0.35, 0)
prevBtn.Position = UDim2.new(0.025, 0, 0.15, 0)
prevBtn.Text = "<"
prevBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
prevBtn.BackgroundTransparency = 0.2
prevBtn.TextScaled = true
prevBtn.TextColor3 = Color3.new(1, 1, 1)
prevBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", prevBtn).CornerRadius = UDim.new(0, 6)

-- Next button
local nextBtn = Instance.new("TextButton", frame)
nextBtn.Size = UDim2.new(0.15, 0, 0.35, 0)
nextBtn.Position = UDim2.new(0.825, 0, 0.15, 0)
nextBtn.Text = ">"
nextBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
nextBtn.BackgroundTransparency = 0.2
nextBtn.TextScaled = true
nextBtn.TextColor3 = Color3.new(1, 1, 1)
nextBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", nextBtn).CornerRadius = UDim.new(0, 6)

-- Play button
local playBtn = Instance.new("TextButton", frame)
playBtn.Size = UDim2.new(0.95, 0, 0.3, 0)
playBtn.Position = UDim2.new(0.025, 0, 0.6, 0)
playBtn.Text = "Play"
playBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
playBtn.BackgroundTransparency = 0.1
playBtn.TextScaled = true
playBtn.TextColor3 = Color3.new(1, 1, 1)
playBtn.Font = Enum.Font.GothamMedium
Instance.new("UICorner", playBtn).CornerRadius = UDim.new(0, 8)

-- Animation Application Logic
local player = game.Players.LocalPlayer
local char, humanoid

local function updateCharacter()
	char = player.Character or player.CharacterAdded:Wait()
	humanoid = char:WaitForChild("Humanoid")
end

player.CharacterAdded:Connect(updateCharacter)
updateCharacter()

local animNames = {}
for name in pairs(animSets) do
	table.insert(animNames, name)
end

local currentIndex = 1

local function updateUI()
	textLabel.Text = animNames[currentIndex]
end

local function applyAnimationSet(setName)
	local set = animSets[setName]
	if not set then return end

	local animate = player.Character and player.Character:FindFirstChild("Animate")
	if not animate then return end

	local function updateGroup(groupName, assetId)
		local group = animate:FindFirstChild(groupName)
		if group then
			for _, obj in ipairs(group:GetChildren()) do
				if obj:IsA("Animation") then
					obj.AnimationId = "rbxassetid://" .. assetId
				end
			end
		end
	end

	updateGroup("idle", set.idle)
	updateGroup("walk", set.walk)
	updateGroup("run", set.run)
	updateGroup("jump", set.jump)
	updateGroup("climb", set.climb)
	updateGroup("fall", set.fall)

	animate.Disabled = true
	task.wait(0.1)
	animate.Disabled = false
end

-- Navigation
prevBtn.MouseButton1Click:Connect(function()
	currentIndex = (currentIndex - 2) % #animNames + 1
	updateUI()
end)

nextBtn.MouseButton1Click:Connect(function()
	currentIndex = (currentIndex % #animNames) + 1
	updateUI()
end)

playBtn.MouseButton1Click:Connect(function()
	applyAnimationSet(animNames[currentIndex])
end)

-- Initial UI
updateUI()

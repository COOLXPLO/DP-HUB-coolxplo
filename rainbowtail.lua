local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function createTrailAttachment(part, name)
	local attachment = Instance.new("Attachment")
	attachment.Name = name
	attachment.Parent = part
	return attachment
end

local function createTailTrail(character)
	-- Get the HumanoidRootPart
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Create attachments
	local attach0 = createTrailAttachment(hrp, "TrailAttachment0")
	attach0.Position = Vector3.new(0, 1, 0) -- Tail starts near top of HRP

	local attach1 = createTrailAttachment(hrp, "TrailAttachment1")
	attach1.Position = Vector3.new(0, -2.5, 0) -- Tail ends behind/below

	-- Create trail
	local trail = Instance.new("Trail")
	trail.Name = "BodyTailTrail"
	trail.Attachment0 = attach0
	trail.Attachment1 = attach1
	trail.Lifetime = 0.5
	trail.MinLength = 0.1
	trail.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0.3),
		NumberSequenceKeypoint.new(1, 1)
	}
	trail.WidthScale = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 1.2),
		NumberSequenceKeypoint.new(1, 0)
	}
	trail.LightEmission = 1
	trail.FaceCamera = true

	-- Rainbow effect (optional)
	local RunService = game:GetService("RunService")
	local hue = 0
	RunService.RenderStepped:Connect(function()
		hue = (hue + 0.01) % 1
		trail.Color = ColorSequence.new(Color3.fromHSV(hue, 1, 1))
	end)

	trail.Parent = hrp
end

player.CharacterAdded:Connect(createTailTrail)
if player.Character then
	createTailTrail(player.Character)
end

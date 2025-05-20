local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local function createAura(character)
	local hrp = character:WaitForChild("HumanoidRootPart")

	-- Create the aura part
	local aura = Instance.new("Part")
	aura.Shape = Enum.PartType.Ball
	aura.Anchored = false
	aura.CanCollide = false
	aura.Transparency = 0.5
	aura.Material = Enum.Material.ForceField
	aura.Size = Vector3.new(4, 4, 4)
	aura.Name = "AuraGlow"
	aura.Parent = character
	aura.CFrame = hrp.CFrame
	aura.Color = Color3.new(1, 1, 1)
	aura.CastShadow = false

	-- Weld it to character
	local weld = Instance.new("WeldConstraint")
	weld.Part0 = aura
	weld.Part1 = hrp
	weld.Parent = aura

	-- Rainbow pulse effect
	local hue = 0
	local pulseDirection = 1
	local baseSize = 4

	RunService.RenderStepped:Connect(function()
		hue = (hue + 0.01) % 1
		local rainbowColor = Color3.fromHSV(hue, 1, 1)
		aura.Color = rainbowColor

		-- Size pulsing effect
		local scale = baseSize + math.sin(tick() * 2) * 0.5
		aura.Size = Vector3.new(scale, scale, scale)
	end)

	-- Add optional white outer glow
	local whiteAura = aura:Clone()
	whiteAura.Transparency = 0.8
	whiteAura.Color = Color3.new(1, 1, 1)
	whiteAura.Size = Vector3.new(6, 6, 6)
	whiteAura.Name = "WhiteOuterGlow"
	whiteAura.Parent = character

	local weld2 = Instance.new("WeldConstraint")
	weld2.Part0 = whiteAura
	weld2.Part1 = hrp
	weld2.Parent = whiteAura
end

player.CharacterAdded:Connect(createAura)
if player.Character then
	createAura(player.Character)
end

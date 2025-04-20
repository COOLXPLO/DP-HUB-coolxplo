local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Anti-duplicate identifier
if not ReplicatedStorage:FindFirstChild("juisdfj0i32i0eidsuf0iok") then
	local detection = Instance.new("Decal")
	detection.Name = "juisdfj0i32i0eidsuf0iok"
	detection.Parent = ReplicatedStorage
end

local flingPower = 10000
local lp = Players.LocalPlayer
local hiddenfling = true -- Auto-activate

-- Fling loop
task.spawn(function()
	local hrp, c, vel, movel = nil, nil, nil, 0.1

	while true do
		RunService.Heartbeat:Wait()

		while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
			RunService.Heartbeat:Wait()
			c = lp.Character
			hrp = c and c:FindFirstChild("HumanoidRootPart")
		end

		if hiddenfling then
			vel = hrp.Velocity
			hrp.Velocity = vel * flingPower + Vector3.new(0, flingPower, 0)
			RunService.RenderStepped:Wait()
			if c and c.Parent and hrp and hrp.Parent then
				hrp.Velocity = vel
			end
			RunService.Stepped:Wait()
			if c and c.Parent and hrp and hrp.Parent then
				hrp.Velocity = vel + Vector3.new(0, movel, 0)
				movel = movel * -1
			end
		end
	end
end)

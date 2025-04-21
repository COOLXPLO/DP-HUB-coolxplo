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

print("Fling Script Loaded. Hiddenfling is set to:", hiddenfling)

task.spawn(function()
    local hrp, c, vel, movel = nil, nil, nil, 0.1

    while true do
        if hiddenfling then
            c = lp.Character
            hrp = c and c:FindFirstChild("HumanoidRootPart")

            if c and hrp then
                print("Flinging character:", c.Name)

                vel = hrp.Velocity

                -- First velocity change
                hrp.Velocity = vel * flingPower + Vector3.new(0, flingPower, 0)
                print("Velocity set to:", hrp.Velocity)

                task.wait() -- Yield to prevent UI freezing

                -- Reset velocity
                hrp.Velocity = vel
                print("Velocity reset to:", vel)

                task.wait() -- Yield again

                -- Add a small movement oscillation
                hrp.Velocity = vel + Vector3.new(0, movel, 0)
                print("Applying oscillation:", hrp.Velocity)

                movel = movel * -1
            else
                print("Character or HumanoidRootPart not found.")
            end
        else
            print("Hiddenfling is disabled.")
        end

        task.wait(0.05) -- Slight pause for stability
    end
end)

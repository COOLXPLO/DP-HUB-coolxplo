 local function createESP(part)
    if part and part:IsA("BasePart") and not part:FindFirstChild("CoinHighlight") then
        local highlight = Instance.new("Highlight")
        highlight.Name = "CoinHighlight"
        highlight.FillTransparency = 1 -- Make only the border visible
        highlight.OutlineColor = Color3.fromRGB(255, 215, 0) -- Gold color
        highlight.OutlineTransparency = 0 -- Ensure outline is visible
        highlight.Parent = part.Parent -- Parent to the same model as the coin
    end
end

local function enableCoinESP()
    for _, v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("CoinContainer") then
            for _, coin in pairs(v.CoinContainer:GetChildren()) do
                if coin:IsA("BasePart") then
                    createESP(coin)
                end
            end
        end
    end
end

task.spawn(function()
    while task.wait(1) do
        enableCoinESP()
    end
end)

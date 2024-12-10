local player = game.Players.LocalPlayer

-- Função para farmar inimigos na ilha do seu nível
function farmEnemies()
    local enemies = game.Workspace.Enemies:GetChildren()
    for _, enemy in pairs(enemies) do
        if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
            player.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame
            wait(0.5)
            -- Ataque o inimigo
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end
    end
end

-- Função para pegar frutas no chão
function collectFruits()
    local fruits = game.Workspace.Fruits:GetChildren()
    for _, fruit in pairs(fruits) do
        if fruit:IsA("Tool") then
            player.Character.HumanoidRootPart.CFrame = fruit.Handle.CFrame
            wait(0.5)
            fireclickdetector(fruit.Handle.ClickDetector)
        end
    end
end

-- Loop principal
while true do
    farmEnemies()
    collectFruits()
    wait(10) -- Espera 10 segundos antes de repetir
end

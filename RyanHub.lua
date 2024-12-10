local player = game.Players.LocalPlayer

-- Função para criar a tela inicial
function createInitialScreen()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local FarmButton = Instance.new("TextButton")
    local CollectButton = Instance.new("TextButton")

    ScreenGui.Parent = player:WaitForChild("PlayerGui")
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.new(0, 0, 0)
    Frame.Size = UDim2.new(0, 300, 0, 200)
    Frame.Position = UDim2.new(0.5, -150, 0.5, -100)

    TextLabel.Parent = Frame
    TextLabel.Text = "Ryan Hub"
    TextLabel.Size = UDim2.new(1, 0, 0.3, 0)
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.TextSize = 24

    FarmButton.Parent = Frame
    FarmButton.Text = "Iniciar Farm"
    FarmButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    FarmButton.Position = UDim2.new(0.1, 0, 0.4, 0)
    FarmButton.BackgroundColor3 = Color3.new(0.2, 0.8, 0.2)
    FarmButton.TextColor3 = Color3.new(1, 1, 1)
    FarmButton.Font = Enum.Font.SourceSans
    FarmButton.TextSize = 18

    CollectButton.Parent = Frame
    CollectButton.Text = "Coletar Frutas"
    CollectButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    CollectButton.Position = UDim2.new(0.1, 0, 0.7, 0)
    CollectButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.8)
    CollectButton.TextColor3 = Color3.new(1, 1, 1)
    CollectButton.Font = Enum.Font.SourceSans
    CollectButton.TextSize = 18

    -- Conectar funções aos botões
    FarmButton.MouseButton1Click:Connect(function()
        farmEnemies()
    end)

    CollectButton.MouseButton1Click:Connect(function()
        collectFruits()
    end)
end

-- Função para farmar inimigos na ilha do seu nível
function farmEnemies()
    local enemies = game.Workspace:FindFirstChild("Enemies")
    if enemies then
        for _, enemy in pairs(enemies:GetChildren()) do
            if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                if enemy:FindFirstChild("HumanoidRootPart") then
                    player.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame
                    wait(0.5)
                    -- Ataque o inimigo
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                else
                    print("HumanoidRootPart não encontrado para o inimigo: " .. enemy.Name)
                end
            end
        end
    else
        print("Enemies não encontrado no Workspace")
    end
end

-- Função para pegar frutas no chão
function collectFruits()
    local fruits = game.Workspace:FindFirstChild("Fruits")
    if fruits then
        for _, fruit in pairs(fruits:GetChildren()) do
            if fruit:IsA("Tool") then
                player.Character.HumanoidRootPart.CFrame = fruit.Handle.CFrame
                wait(0.5)
                fireclickdetector(fruit.Handle.ClickDetector)
            end
        end
    else
        print("Fruits não encontrado no Workspace")
    end
end

-- Chama a função para criar a tela inicial
createInitialScreen()

-- Criação da GUI principal
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainButton = Instance.new("TextButton")
local BuyButton = Instance.new("TextButton")
local HomeButton = Instance.new("TextButton")

-- Configuração da GUI
ScreenGui.Name = "BloxFruitsGUI"
ScreenGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MainFrame.Position = UDim2.new(0.5, -100, 0.5, -100)
MainFrame.Size = UDim2.new(0, 200, 0, 200)

MainButton.Name = "MainButton"
MainButton.Parent = MainFrame
MainButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
MainButton.Position = UDim2.new(0.1, 0, 0.1, 0)
MainButton.Size = UDim2.new(0.8, 0, 0.2, 0)
MainButton.Text = "Main"

BuyButton.Name = "BuyButton"
BuyButton.Parent = MainFrame
BuyButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyButton.Position = UDim2.new(0.1, 0, 0.4, 0)
BuyButton.Size = UDim2.new(0.8, 0, 0.2, 0)
BuyButton.Text = "Buy"

HomeButton.Name = "HomeButton"
HomeButton.Parent = MainFrame
HomeButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
HomeButton.Position = UDim2.new(0.1, 0, 0.7, 0)
HomeButton.Size = UDim2.new(0.8, 0, 0.2, 0)
HomeButton.Text = "Home"

-- Função para criar a aba Main
local function createMainTab()
    local MainTab = Instance.new("Frame")
    local FarmButton = Instance.new("TextButton")
    local FruitButton = Instance.new("TextButton")

    MainTab.Name = "MainTab"
    MainTab.Parent = ScreenGui
    MainTab.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    MainTab.Position = UDim2.new(0.5, -100, 0.5, -100)
    MainTab.Size = UDim2.new(0, 200, 0, 200)
    MainTab.Visible = false

    FarmButton.Name = "FarmButton"
    FarmButton.Parent = MainTab
    FarmButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    FarmButton.Position = UDim2.new(0.1, 0, 0.1, 0)
    FarmButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    FarmButton.Text = "Farm Level"

    FruitButton.Name = "FruitButton"
    FruitButton.Parent = MainTab
    FruitButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    FruitButton.Position = UDim2.new(0.1, 0, 0.4, 0)
    FruitButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    FruitButton.Text = "Collect Fruits"

    return MainTab
end

-- Função para criar a aba Buy
local function createBuyTab()
    local BuyTab = Instance.new("Frame")
    local SpinButton = Instance.new("TextButton")
    local ShopButton = Instance.new("TextButton")

    BuyTab.Name = "BuyTab"
    BuyTab.Parent = ScreenGui
    BuyTab.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    BuyTab.Position = UDim2.new(0.5, -100, 0.5, -100)
    BuyTab.Size = UDim2.new(0, 200, 0, 200)
    BuyTab.Visible = false

    SpinButton.Name = "SpinButton"
    SpinButton.Parent = BuyTab
    SpinButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    SpinButton.Position = UDim2.new(0.1, 0, 0.1, 0)
    SpinButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    SpinButton.Text = "Girar Fruta"

    ShopButton.Name = "ShopButton"
    ShopButton.Parent = BuyTab
    ShopButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    ShopButton.Position = UDim2.new(0.1, 0, 0.4, 0)
    ShopButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    ShopButton.Text = "Open Shop Fruits"

    return BuyTab
end

-- Função para criar a aba Home
local function createHomeTab()
    local HomeTab = Instance.new("Frame")
    local MadeByLabel = Instance.new("TextLabel")
    local GithubLabel = Instance.new("TextLabel")

    HomeTab.Name = "HomeTab"
    HomeTab.Parent = ScreenGui
    HomeTab.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    HomeTab.Position = UDim2.new(0.5, -100, 0.5, -100)
    HomeTab.Size = UDim2.new(0, 200, 0, 200)
    HomeTab.Visible = false

    MadeByLabel.Name = "MadeByLabel"
    MadeByLabel.Parent = HomeTab
    MadeByLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    MadeByLabel.Position = UDim2.new(0.1, 0, 0.1, 0)
    MadeByLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
    MadeByLabel.Text = "Feito por Pequenoreiaz10"
    MadeByLabel.TextColor3 = Color3.new(1, 1, 1)

    GithubLabel.Name = "GithubLabel"
    GithubLabel.Parent = HomeTab
    GithubLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    GithubLabel.Position = UDim2.new(0.1, 0, 0.4, 0)
    GithubLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
    GithubLabel.Text = "Meu Perfil do Github: RyanKodi"
    GithubLabel.TextColor3 = Color3.new(1, 1, 1)

    return HomeTab
end

-- Criação das abas
local MainTab = createMainTab()
local BuyTab = createBuyTab()
local HomeTab = createHomeTab()

-- Funções dos botões
MainButton.MouseButton1Click:Connect(function()
    MainTab.Visible = not MainTab.Visible
    BuyTab.Visible = false
    HomeTab.Visible = false
end)

BuyButton.MouseButton1Click:Connect(function()
    BuyTab.Visible = not BuyTab.Visible
    MainTab.Visible = false
    HomeTab.Visible = false
end)

HomeButton.MouseButton1Click:Connect(function()
    HomeTab.Visible = not HomeTab.Visible
    MainTab.Visible = false
    BuyTab.Visible = false
end)

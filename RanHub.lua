-- RanHub.lua

local deltaHub = Instance.new('ScreenGui')
deltaHub.Name = 'RanHub'
deltaHub.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui')

deltaHub.ResetOnSpawn = false

-- Proper UI scaling
local function scaleUI(element)
    -- Scales the element size based on screen size
    local screenSize = workspace.CurrentCamera.ViewportSize
    element.Size = UDim2.new(0, screenSize.X * 0.3, 0, screenSize.Y * 0.3)
end

-- Function to create tabs
local function createTab(parent, title)
    local tab = Instance.new('Frame')
    tab.Name = title
    tab.Parent = parent
    scaleUI(tab)

    local titleLabel = Instance.new('TextLabel')
    titleLabel.Text = title
    titleLabel.Parent = tab

    return tab
end

-- Create main frame and tabs
local mainFrame = Instance.new('Frame')
mainFrame.Parent = deltaHub
scaleUI(mainFrame)

local tab1 = createTab(mainFrame, 'Tab 1')
local tab2 = createTab(mainFrame, 'Tab 2')

-- Universal compatibility feature example
local function isFeatureSupported(feature)
    local supported = true -- Check if feature is supported in current environment
    return supported
end

-- Open/Close button
local toggleButton = Instance.new('TextButton')
toggleButton.Text = 'Open/Close'
toggleButton.Parent = mainFrame

toggleButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
end)

-- Error handling
local function safeExecute(func)
    local success, err = pcall(func)
    if not success then
        warn('Error: ' .. tostring(err))
    end
end

-- Example usage of error handling
safeExecute(function()
    -- Call some code that might fail
end)


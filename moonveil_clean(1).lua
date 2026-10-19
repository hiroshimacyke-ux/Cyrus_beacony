-- Unpacked by ZeroVector: the script inside the packed file, as it was written
if _G.scriptExecuted then return end
_G.scriptExecuted = true
if game.PlaceId ~= 142823291 then
    return  
end
local Fluent = loadstring(game:HttpGet("https://github.com/StyearX/Fluent-Modded/releases/download/Fluent/FluentPro"))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Debris = game:GetService("Debris")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local VirtualUser = game:GetService("VirtualUser")
local Lighting = game:GetService("Lighting")
local function Notify(title, content, ntype, icon, duration)
    pcall(function()
        Fluent:Notify({ Title = title, Content = content, Type = ntype or "Info", Icon = icon, Duration = duration or 3 })
    end)
end
local FadeEvent, RoundEndFadeEvent, PlayEmoteEvent
pcall(function()
    local GameplayFolder = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Gameplay")
    FadeEvent = GameplayFolder:WaitForChild("Fade")
    RoundEndFadeEvent = GameplayFolder:WaitForChild("RoundEndFade")
    PlayEmoteEvent = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Misc"):WaitForChild("PlayEmote")
end)
local themes = {}
local function addTheme(name, data)
    pcall(function()
        if Fluent.RegisterCustomTheme then Fluent:RegisterCustomTheme(name, data) table.insert(themes, name) end
    end)
end
addTheme("Blue (Ryo)", {
    Name = "Blue (Ryo)", Accent = Color3.fromRGB(100, 140, 220),
    AcrylicMain = Color3.fromRGB(18, 20, 28), AcrylicBorder = Color3.fromRGB(80, 100, 160),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(18, 20, 28), Color3.fromRGB(10, 12, 18)), AcrylicNoise = 0.7,
    TitleBarLine = Color3.fromRGB(80, 100, 160), Tab = Color3.fromRGB(30, 35, 50), Element = Color3.fromRGB(25, 28, 40),
    ElementBorder = Color3.fromRGB(70, 85, 140), InElementBorder = Color3.fromRGB(100, 130, 200), ElementTransparency = 0.82,
    ToggleSlider = Color3.fromRGB(40, 45, 65), ToggleToggled = Color3.fromRGB(100, 140, 220), SliderRail = Color3.fromRGB(40, 45, 65),
    DropdownFrame = Color3.fromRGB(20, 22, 32), DropdownHolder = Color3.fromRGB(12, 14, 20), DropdownBorder = Color3.fromRGB(70, 85, 140),
    DropdownOption = Color3.fromRGB(30, 35, 50), Keybind = Color3.fromRGB(30, 35, 50), Input = Color3.fromRGB(20, 22, 32),
    InputFocused = Color3.fromRGB(8, 10, 16), InputIndicator = Color3.fromRGB(100, 130, 200),
    Dialog = Color3.fromRGB(14, 16, 22), DialogHolder = Color3.fromRGB(10, 12, 18), DialogHolderLine = Color3.fromRGB(60, 75, 120),
    DialogButton = Color3.fromRGB(25, 30, 44), DialogButtonBorder = Color3.fromRGB(70, 85, 140), DialogBorder = Color3.fromRGB(70, 85, 140),
    DialogInput = Color3.fromRGB(20, 22, 32), DialogInputLine = Color3.fromRGB(100, 130, 200),
    Text = Color3.fromRGB(230, 235, 250), SubText = Color3.fromRGB(160, 175, 210), Hover = Color3.fromRGB(45, 52, 75), HoverChange = 0.05,
    ShineEnabled = true, Shine = { Speed = 0.5, RotationSpeed = 25,
        ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 40, 80)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 140, 220)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 40, 80)) }) },
    StrokeShine = true, StrokeDark = Color3.fromRGB(50, 60, 100),
    ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 40, 80)), ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 20, 40)) }),
        Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 110, 180)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(130, 170, 240)), ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 110, 180)) }) },
    Background = "rbxassetid://110300998910160", BackgroundTransparency = 0.15,
})
addTheme("Red (Kita)", {
    Name = "Red (Kita)", Accent = Color3.fromRGB(255, 90, 90), AcrylicMain = Color3.fromRGB(28, 18, 18),
    AcrylicBorder = Color3.fromRGB(200, 60, 60), AcrylicGradient = ColorSequence.new(Color3.fromRGB(28, 18, 18), Color3.fromRGB(14, 8, 8)), AcrylicNoise = 0.7,
    TitleBarLine = Color3.fromRGB(200, 60, 60), Tab = Color3.fromRGB(40, 25, 25), Element = Color3.fromRGB(35, 20, 20),
    ElementBorder = Color3.fromRGB(180, 50, 50), InElementBorder = Color3.fromRGB(240, 90, 90), ElementTransparency = 0.82,
    ToggleSlider = Color3.fromRGB(55, 30, 30), ToggleToggled = Color3.fromRGB(255, 90, 90), SliderRail = Color3.fromRGB(55, 30, 30),
    DropdownFrame = Color3.fromRGB(25, 15, 15), DropdownHolder = Color3.fromRGB(14, 8, 8), DropdownBorder = Color3.fromRGB(180, 50, 50),
    DropdownOption = Color3.fromRGB(40, 25, 25), Keybind = Color3.fromRGB(40, 25, 25), Input = Color3.fromRGB(25, 15, 15),
    InputFocused = Color3.fromRGB(10, 5, 5), InputIndicator = Color3.fromRGB(240, 90, 90),
    Dialog = Color3.fromRGB(18, 10, 10), DialogHolder = Color3.fromRGB(10, 5, 5), DialogHolderLine = Color3.fromRGB(140, 35, 35),
    DialogButton = Color3.fromRGB(35, 20, 20), DialogButtonBorder = Color3.fromRGB(180, 50, 50), DialogBorder = Color3.fromRGB(180, 50, 50),
    DialogInput = Color3.fromRGB(25, 15, 15), DialogInputLine = Color3.fromRGB(240, 90, 90),
    Text = Color3.fromRGB(255, 235, 235), SubText = Color3.fromRGB(230, 160, 160), Hover = Color3.fromRGB(60, 35, 35), HoverChange = 0.05,
    ShineEnabled = true, Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 25, 25)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(140, 25, 25)) }) },
    StrokeShine = true, StrokeDark = Color3.fromRGB(120, 30, 30),
    ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 30, 30)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 15, 15)) }),
        Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 70, 70)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 120, 120)), ColorSequenceKeypoint.new(1, Color3.fromRGB(220, 70, 70)) }) },
    Background = "rbxassetid://125644682328750", BackgroundTransparency = 0.15,
})
addTheme("Pink (Bocchi)", {
    Name = "Pink (Bocchi)", Accent = Color3.fromRGB(240, 120, 190), AcrylicMain = Color3.fromRGB(30, 18, 28),
    AcrylicBorder = Color3.fromRGB(200, 80, 150), AcrylicGradient = ColorSequence.new(Color3.fromRGB(30, 18, 28), Color3.fromRGB(16, 8, 14)), AcrylicNoise = 0.7,
    TitleBarLine = Color3.fromRGB(200, 80, 150), Tab = Color3.fromRGB(45, 25, 40), Element = Color3.fromRGB(38, 20, 35),
    ElementBorder = Color3.fromRGB(180, 60, 130), InElementBorder = Color3.fromRGB(240, 130, 200), ElementTransparency = 0.82,
    ToggleSlider = Color3.fromRGB(55, 30, 50), ToggleToggled = Color3.fromRGB(240, 120, 190), SliderRail = Color3.fromRGB(55, 30, 50),
    DropdownFrame = Color3.fromRGB(26, 14, 22), DropdownHolder = Color3.fromRGB(16, 8, 14), DropdownBorder = Color3.fromRGB(180, 60, 130),
    DropdownOption = Color3.fromRGB(45, 25, 40), Keybind = Color3.fromRGB(45, 25, 40), Input = Color3.fromRGB(26, 14, 22),
    InputFocused = Color3.fromRGB(10, 5, 8), InputIndicator = Color3.fromRGB(240, 130, 200),
    Dialog = Color3.fromRGB(20, 10, 16), DialogHolder = Color3.fromRGB(10, 5, 8), DialogHolderLine = Color3.fromRGB(140, 40, 100),
    DialogButton = Color3.fromRGB(38, 20, 35), DialogButtonBorder = Color3.fromRGB(180, 60, 130), DialogBorder = Color3.fromRGB(180, 60, 130),
    DialogInput = Color3.fromRGB(26, 14, 22), DialogInputLine = Color3.fromRGB(240, 130, 200),
    Text = Color3.fromRGB(255, 235, 245), SubText = Color3.fromRGB(220, 160, 200), Hover = Color3.fromRGB(65, 35, 55), HoverChange = 0.05,
    ShineEnabled = true, Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 30, 70)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 140, 200)), ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 30, 70)) }) },
    StrokeShine = true, StrokeDark = Color3.fromRGB(100, 40, 80),
    ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 30, 70)), ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 15, 35)) }),
        Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 90, 160)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 150, 210)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 90, 160)) }) },
    Background = "rbxassetid://100823211487117", BackgroundTransparency = 0.15,
})
addTheme("Yellow (Nijika)", {
    Name = "Yellow (Nijika)", Accent = Color3.fromRGB(255, 210, 80), AcrylicMain = Color3.fromRGB(28, 24, 14),
    AcrylicBorder = Color3.fromRGB(220, 170, 50), AcrylicGradient = ColorSequence.new(Color3.fromRGB(28, 24, 14), Color3.fromRGB(16, 14, 6)), AcrylicNoise = 0.7,
    TitleBarLine = Color3.fromRGB(220, 170, 50), Tab = Color3.fromRGB(45, 38, 18), Element = Color3.fromRGB(38, 30, 15),
    ElementBorder = Color3.fromRGB(200, 150, 40), InElementBorder = Color3.fromRGB(255, 200, 100), ElementTransparency = 0.82,
    ToggleSlider = Color3.fromRGB(55, 45, 25), ToggleToggled = Color3.fromRGB(255, 210, 80), SliderRail = Color3.fromRGB(55, 45, 25),
    DropdownFrame = Color3.fromRGB(25, 20, 10), DropdownHolder = Color3.fromRGB(14, 10, 5), DropdownBorder = Color3.fromRGB(200, 150, 40),
    DropdownOption = Color3.fromRGB(45, 38, 18), Keybind = Color3.fromRGB(45, 38, 18), Input = Color3.fromRGB(25, 20, 10),
    InputFocused = Color3.fromRGB(10, 8, 4), InputIndicator = Color3.fromRGB(255, 200, 100),
    Dialog = Color3.fromRGB(18, 14, 8), DialogHolder = Color3.fromRGB(10, 8, 4), DialogHolderLine = Color3.fromRGB(160, 120, 30),
    DialogButton = Color3.fromRGB(38, 30, 15), DialogButtonBorder = Color3.fromRGB(200, 150, 40), DialogBorder = Color3.fromRGB(200, 150, 40),
    DialogInput = Color3.fromRGB(25, 20, 10), DialogInputLine = Color3.fromRGB(255, 200, 100),
    Text = Color3.fromRGB(255, 250, 230), SubText = Color3.fromRGB(220, 200, 150), Hover = Color3.fromRGB(65, 52, 25), HoverChange = 0.05,
    ShineEnabled = true, Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 90, 20)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 220, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 90, 20)) }) },
    StrokeShine = true, StrokeDark = Color3.fromRGB(100, 70, 20),
    ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 90, 20)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 45, 10)) }),
        Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 170, 60)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 220, 120)), ColorSequenceKeypoint.new(1, Color3.fromRGB(220, 170, 60)) }) },
    Background = "rbxassetid://90908656139712", BackgroundTransparency = 0.15,
})
if #themes == 0 then themes = {"Dark", "Light", "Blood Red", "Amoled", "EmeraldDark", "NeonBlue", "Sunset", "SlateAnimated"} _G.Theme = "Dark" end
local defaultTheme = table.find(themes, "Pink (Bocchi)") and "Pink (Bocchi)" or themes[1]
local isMobile = UserInputService.TouchEnabled
local windowSize = isMobile and UDim2.fromOffset(480, 380) or UDim2.fromOffset(640, 520)
local Window = Fluent:CreateWindow({
    Title = "Hello, " .. LocalPlayer.Name,
    SubTitle = "MM2",
    TabWidth = isMobile and 110 or 150,
    Size = windowSize,
    Acrylic = true,
    Theme = defaultTheme,
    MinimizeKey = Enum.KeyCode.RightShift
})
-- round the theme/background image so it follows the window corners (no square edges)
local WINDOW_CORNER = UDim.new(0, 8)
local function roundThemeImage(obj)
    if obj:IsA("ImageLabel") and obj.Size.X.Scale >= 0.99 and obj.Size.Y.Scale >= 0.99
        and not obj:FindFirstChildOfClass("UICorner") then
        local c = Instance.new("UICorner")
        c.CornerRadius = WINDOW_CORNER
        c.Parent = obj
    end
end
task.spawn(function()
    local frame
    for _ = 1, 40 do
        local ok, f = pcall(function() return Window.AcrylicPaint.Frame end)
        if ok and f then frame = f break end
        task.wait(0.1)
    end
    if not frame then return end
    pcall(function() frame.ClipsDescendants = true end)
    for _, d in ipairs(frame:GetDescendants()) do roundThemeImage(d) end
    frame.DescendantAdded:Connect(function(d)
        task.defer(roundThemeImage, d)
    end)
end)
local toggleGui = Instance.new("ScreenGui")
toggleGui.Name = "OpenUi"
toggleGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
toggleGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
toggleGui.ResetOnSpawn = false
local mainBtn = Instance.new("TextButton")
mainBtn.Name = "OpenButton"
mainBtn.Parent = toggleGui
mainBtn.BackgroundColor3 = Color3.fromRGB(35,35,35)
mainBtn.BackgroundTransparency = 1
mainBtn.Position = isMobile and UDim2.new(0.05, 0, 0.15, 0) or UDim2.new(0.102,0,0.11,0)
mainBtn.Size = isMobile and UDim2.new(0,48,0,32) or UDim2.new(0,64,0,42)
mainBtn.Text = ""
mainBtn.Visible = true
Instance.new("UICorner", mainBtn)
local frontImage = Instance.new("ImageLabel")
frontImage.Name = "StaticIcon"
frontImage.Parent = mainBtn
frontImage.Size = isMobile and UDim2.fromOffset(40,40) or UDim2.fromOffset(55,55)
frontImage.Position = UDim2.new(0.5,0,0.5,0)
frontImage.AnchorPoint = Vector2.new(0.5,0.5)
frontImage.BackgroundTransparency = 1
frontImage.Image = "rbxassetid://73265327699098"
frontImage.ZIndex = 1
Instance.new("UICorner", frontImage).CornerRadius = UDim.new(0.2,0)
local function MakeDraggable(topbar, obj, noHoldLock)
    local dragging, dragInput, dragStart, startPos = false, nil, nil, nil
    local holding, holdToken = false, 0
    obj:SetAttribute("Locked", false)
    local function Update(input)
        if obj:GetAttribute("Locked") then return end
        local delta = input.Position - dragStart
        obj.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    local function ToggleLock()
        local newState = not obj:GetAttribute("Locked")
        obj:SetAttribute("Locked", newState)
    end
    topbar.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
        dragging = not obj:GetAttribute("Locked"); holding = true; dragStart = input.Position; startPos = obj.Position
        holdToken = holdToken + 1; local token = holdToken
        if not noHoldLock then
            task.delay(1.0, function() if holding and token == holdToken then ToggleLock() end end)
        end
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false holding = false end end)
    end)
    topbar.InputChanged:Connect(function(input)
        if not dragStart then return end
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if (input.Position - dragStart).Magnitude > 6 then holding = false end
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input) if input == dragInput and dragging then Update(input) end end)
end
MakeDraggable(mainBtn, mainBtn)
-- ===== quick buttons: round, jump-button style =====
local B64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local b64lookup = {}
for i = 1, #B64_CHARS do b64lookup[B64_CHARS:byte(i)] = i - 1 end
local function b64decode(s)
    s = s:gsub("[^%w%+/]", "")
    local out, acc, nb = {}, 0, 0
    for i = 1, #s do
        acc = acc * 64 + b64lookup[s:byte(i)]
        nb = nb + 6
        if nb >= 8 then
            nb = nb - 8
            local b = math.floor(acc / 2 ^ nb)
            out[#out + 1] = string.char(b)
            acc = acc - b * 2 ^ nb
        end
    end
    return table.concat(out)
end
-- icons are embedded; they are written to the workspace folder and loaded with getcustomasset
local function loadIcon(name, data)
    local ok, asset = pcall(function()
        local getAsset = getcustomasset or getsynasset
        if not (writefile and getAsset) then return nil end
        local path = "cyrus_beacony_" .. name .. ".png"
        writefile(path, b64decode(data))
        return getAsset(path)
    end)
    if ok and asset and asset ~= "" then return asset end
    return nil
end
local KNIFE_ICON = loadIcon("knife", [=[
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
]=])
local GUN_ICON = loadIcon("gun", [=[
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
]=])
local quickGui = Instance.new("ScreenGui")
quickGui.Name = "QuickButtons"
quickGui.ResetOnSpawn = false
quickGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
quickGui.DisplayOrder = 100
quickGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
local QB_SIZE = isMobile and 58 or 64
local quickButtons = {}   -- key -> button
local quickHidden = {}    -- key -> true when hidden from the menu
local quickLocked = false
local function setQuickLocked(state)
    quickLocked = state
    for _, b in pairs(quickButtons) do b:SetAttribute("Locked", state) end
end
local function setQuickHidden(key, hidden)
    quickHidden[key] = hidden or nil
    local b = quickButtons[key]
    if b then b.Visible = not hidden end
end
local function removeQuickButton(key)
    local b = quickButtons[key]
    if b then b:Destroy() quickButtons[key] = nil end
end
local function makeQuickButton(key, label, sub, x, y, action, icon)
    removeQuickButton(key)
    local btn = Instance.new("TextButton")
    btn.Name = key
    btn.AnchorPoint = Vector2.new(1, 1)
    btn.Position = UDim2.new(1, x, 1, y)
    btn.Size = UDim2.fromOffset(QB_SIZE, QB_SIZE)
    btn.AutoButtonColor = false
    btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    btn.BackgroundTransparency = 0.45
    btn.Font = Enum.Font.GothamBold
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextTransparency = 0.1
    btn.TextSize = isMobile and 18 or 20
    btn.Text = icon and "" or label
    btn.Parent = quickGui
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = btn
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Transparency = 0.6
    stroke.Thickness = 2
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Parent = btn
    if icon then
        local img = Instance.new("ImageLabel")
        img.Name = "Icon"
        img.BackgroundTransparency = 1
        img.AnchorPoint = Vector2.new(0.5, 0.5)
        img.Position = UDim2.fromScale(0.5, 0.5)
        img.Size = UDim2.fromScale(0.68, 0.68)
        img.ScaleType = Enum.ScaleType.Fit
        img.Image = icon
        img.Parent = btn
    end
    local subLabel = Instance.new("TextLabel")
    subLabel.BackgroundTransparency = 1
    subLabel.AnchorPoint = Vector2.new(0.5, 0)
    subLabel.Position = UDim2.new(0.5, 0, 1, 2)
    subLabel.Size = UDim2.fromOffset(QB_SIZE + 20, 14)
    subLabel.Text = sub
    subLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    subLabel.TextTransparency = 0.2
    subLabel.TextStrokeTransparency = 0.5
    subLabel.Font = Enum.Font.GothamMedium
    subLabel.TextSize = 11
    subLabel.Parent = btn
    -- a drag must not count as a tap
    local startPos, moved = nil, false
    btn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            startPos, moved = input.Position, false
            btn.BackgroundTransparency = 0.25
        end
    end)
    btn.InputChanged:Connect(function(input)
        if startPos and not btn:GetAttribute("Locked")
            and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch)
            and (input.Position - startPos).Magnitude > 8 then
            moved = true
        end
    end)
    btn.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            btn.BackgroundTransparency = 0.45
        end
    end)
    btn.Activated:Connect(function()
        if not moved then action() end
    end)
    MakeDraggable(btn, btn, true) -- drag to move; the lock button freezes them
    btn:SetAttribute("Locked", quickLocked)
    btn.Visible = not quickHidden[key]
    quickButtons[key] = btn
    return btn
end
local uiVisible = true
mainBtn.MouseButton1Click:Connect(function()
    uiVisible = not uiVisible
    if uiVisible then Window:Show() else Window:Hide() end
end)
_G.TargetTracking = {}  
local currentRoles = {}
local savedPlayerData = {}
local gunDropCache = {}
local FlingActive = false
getgenv().OldPos = nil
getgenv().FPDH = workspace.FallenPartsDestroyHeight
local killAllActive = false
local spaceHeld = false
local lastJumpTime = 0
local inRound = false
local isDead = false
local BOMB_CONFIG = {
    BombDuration = 5, JumpPowerOverride = 50,
    PredictFactor = 0.045, VerticalOffset = -1.5,
    MeshId = "http://www.roblox.com/asset/?id=104516854",
    TextureId = "http://www.roblox.com/asset/?id=104516981",
    ToolName = "💣 Predict Bomb"
}
_G.WalkSpeed = 16
_G.JumpPower = 50
_G.ExtremeFlingEnabled = false
_G.SpeedGlitchEnabled = false
_G.GlitchSpeed = 35
_G.WhitelistEnabled = false
_G.WhitelistFriends = false
_G.WhitelistPlayers = {}
_G.EspEnabled = false
_G.AutoGrabEnabled = false
_G.GunEspEnabled = false
_G.SayRoleEnabled = false
_G.NoclipEnabled = false
_G.FlyEnabled = false
_G.FlySpeed = 50
_G.AntiAfkEnabled = true
_G.FOVValue = 70
_G.Theme = defaultTheme
_G.SilentAimEnabled = false
_G.SilentAimKey = "E"
_G.SilentAimMobile = false
_G.NamesESP = false
_G.TrapESP = false
_G.EasyGlitch = false
_G.Invisibility = false
_G.CoinFarmEnabled = false
_G.XrayEnabled = false
_G.AntiTrapEnabled = false
_G.AntiFlingEnabled = false
_G.AutoBreakGun = false
_G.KnifeAuraEnabled = false
_G.KnifeAuraRange = 20
_G.FastThrowEnabled = false
_G.FastThrowKey = "E"
_G.KnifeSilentAimEnabled = false
_G.KnifeSilentAimKey = "R"
_G.AimbotEnabled = false
_G.AimbotKey = "Q"
_G.ImproveFPS = false
_G.RTXShaders = false
_G.KorbloxEnabled = false
_G.HeadlessEnabled = false
_G.CoinFarmSpeed = 1.0
_G.CoinType = "Coin and BeachBall"
_G.MurdFill = Color3.fromRGB(255,0,0)
_G.MurdFillTrans = 0.5
_G.MurdOutline = Color3.fromRGB(255,255,255)
_G.MurdOutlineTrans = 1
_G.SheriffFill = Color3.fromRGB(0,0,255)
_G.SheriffFillTrans = 0.5
_G.SheriffOutline = Color3.fromRGB(255,255,255)
_G.SheriffOutlineTrans = 1
_G.InnocentFill = Color3.fromRGB(0,255,0)
_G.InnocentFillTrans = 0.5
_G.InnocentOutline = Color3.fromRGB(255,255,255)
_G.InnocentOutlineTrans = 1
_G.LobbyFill = Color3.fromRGB(255,255,255)
_G.LobbyFillTrans = 1
_G.LobbyOutline = Color3.fromRGB(255,255,255)
_G.LobbyOutlineTrans = 1
_G.GunFill = Color3.fromRGB(255,255,0)
_G.GunFillTrans = 0.5
_G.GunOutline = Color3.fromRGB(255,255,255)
_G.GunOutlineTrans = 1
local SETTINGS_FILE = "cyrus_beacony_Settings.json"
local function saveSettings()
    if not writefile then return end
    local data = {}
    for k,v in pairs(_G) do
        local t = type(v)
        if t == "string" or t == "number" or t == "boolean" then data[k] = v
        elseif t == "table" and k == "WhitelistPlayers" then
            local wl = {}
            for name in pairs(v) do table.insert(wl, name) end
            data["WhitelistPlayers"] = wl
        elseif t == "userdata" and typeof(v) == "Color3" then data[k] = {v.R, v.G, v.B} end
    end
    writefile(SETTINGS_FILE, HttpService:JSONEncode(data))
end
local function loadSettings()
    if not readfile or not isfile or not isfile(SETTINGS_FILE) then return false end
    local success, json = pcall(function() return readfile(SETTINGS_FILE) end)
    if not success or not json then return false end
    local success2, data = pcall(function() return HttpService:JSONDecode(json) end)
    if not success2 or not data then return false end
    for k,v in pairs(data) do
        if k == "WhitelistPlayers" then
            local wl = {}
            for _, name in ipairs(v) do wl[name] = true end
            _G.WhitelistPlayers = wl
        elseif type(v) == "table" and #v == 3 then _G[k] = Color3.new(v[1], v[2], v[3])
        else _G[k] = v end
    end
    pcall(function() Fluent:SetTheme(_G.Theme) end)
    return true
end
local function getPlayersNames()
    local t = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer then table.insert(t, p.Name) end
    end
    table.sort(t)
    return t
end
local function isWhitelisted(pl)
    if not _G.WhitelistEnabled then return false end
    if _G.WhitelistFriends then
        local ok, fr = pcall(function() return LocalPlayer:IsFriendsWith(pl.UserId) end)
        if ok and fr then return true end
    end
    if _G.WhitelistPlayers and _G.WhitelistPlayers[pl.Name] then return true end
    return false
end
local function scanRoles()
    for _, p in ipairs(Players:GetPlayers()) do
        local char = p.Character
        if char then
            local bp = p:FindFirstChild("Backpack")
            if char:FindFirstChild("Knife") or (bp and bp:FindFirstChild("Knife")) then
                currentRoles[p.Name] = "Murderer"
            elseif char:FindFirstChild("Gun") or (bp and bp:FindFirstChild("Gun")) then
                currentRoles[p.Name] = "Sheriff"
            else
                currentRoles[p.Name] = nil
            end
        else
            currentRoles[p.Name] = nil
        end
    end
end
local function getTargetByRole(role)
    scanRoles()
    for name, r in pairs(currentRoles) do
        if r == role then
            local pl = Players:FindFirstChild(name)
            if pl and pl ~= LocalPlayer and pl.Character then return pl end
        end
    end
    return nil
end
local function getMyRole()
    local r = currentRoles[LocalPlayer.Name]
    if not r and savedPlayerData[LocalPlayer.Name] then
        r = savedPlayerData[LocalPlayer.Name].Role
    end
    return r or "Unknown"
end
local function clearESP()
    for _, p in ipairs(Players:GetPlayers()) do
        if p.Character then
            local hl = p.Character:FindFirstChild("PreEspHighlight")
            if hl then hl:Destroy() end
            local bg = p.Character:FindFirstChild("EspNameTag")
            if bg then bg:Destroy() end
        end
    end
    for _, v in pairs(gunDropCache) do
        local hl = v:FindFirstChild("GunDropHighlight")
        if hl then hl:Destroy() end
    end
end
local function updateESP(player)
    if player == LocalPlayer then return end
    local char = player.Character
    if not char then return end
    local data = savedPlayerData[player.Name]
    if data and (data.Dead or data.Killed) then
        local hl = char:FindFirstChild("PreEspHighlight")
        if hl then hl:Destroy() end
        local bg = char:FindFirstChild("EspNameTag")
        if bg then bg:Destroy() end
        return
    end
    local role = currentRoles[player.Name] or (data and data.Role)
    local hl = char:FindFirstChild("PreEspHighlight") or Instance.new("Highlight")
    hl.Name = "PreEspHighlight"
    hl.Parent = char
    if role == "Murderer" then
        hl.FillColor = _G.MurdFill
        hl.FillTransparency = _G.MurdFillTrans
        hl.OutlineColor = _G.MurdOutline
        hl.OutlineTransparency = 1
    elseif role == "Sheriff" then
        hl.FillColor = _G.SheriffFill
        hl.FillTransparency = _G.SheriffFillTrans
        hl.OutlineColor = _G.SheriffOutline
        hl.OutlineTransparency = 1
    elseif role == "Innocent" then
        hl.FillColor = _G.InnocentFill
        hl.FillTransparency = _G.InnocentFillTrans
        hl.OutlineColor = _G.InnocentOutline
        hl.OutlineTransparency = 1
    else
        hl.FillColor = _G.LobbyFill
        hl.FillTransparency = _G.LobbyFillTrans
        hl.OutlineColor = _G.LobbyOutline
        hl.OutlineTransparency = 1
    end
    if _G.NamesESP then
        local head = char:FindFirstChild("Head")
        if head then
            local billboard = char:FindFirstChild("EspNameTag") or Instance.new("BillboardGui")
            billboard.Name = "EspNameTag"
            billboard.Parent = char
            billboard.AlwaysOnTop = true
            billboard.Size = UDim2.new(0, 200, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 2.5, 0)
            billboard.MaxDistance = 500
            local label = billboard:FindFirstChild("TextLabel") or Instance.new("TextLabel")
            label.Name = "TextLabel"
            label.Parent = billboard
            label.Size = UDim2.new(1, 0, 1, 0)
            label.BackgroundTransparency = 1
            label.Text = player.Name
            label.TextScaled = true
            label.Font = Enum.Font.SourceSansBold
            label.TextStrokeTransparency = 0.5
            if role == "Murderer" then
                label.TextColor3 = _G.MurdFill
            elseif role == "Sheriff" then
                label.TextColor3 = _G.SheriffFill
            elseif role == "Innocent" then
                label.TextColor3 = _G.InnocentFill
            else
                label.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
        end
    else
        local bg = char:FindFirstChild("EspNameTag")
        if bg then bg:Destroy() end
    end
end
local function toggleXray(v)
    _G.XrayEnabled = v
    local function scan(z, t)
        for _, i in pairs(z:GetChildren()) do
            if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
                i.LocalTransparencyModifier = t
            end
            scan(i, t)
        end
    end
    scan(workspace, v and 0.9 or 0)
end
local antiTrapConn
local function toggleAntiTrap(v)
    _G.AntiTrapEnabled = v
    if v then
        antiTrapConn = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if char and char:FindFirstChildOfClass("Humanoid") then
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum.WalkSpeed == 0.01 then
                    hum.WalkSpeed = _G.WalkSpeed
                end
            end
        end)
    else
        if antiTrapConn then
            antiTrapConn:Disconnect()
            antiTrapConn = nil
        end
    end
end
local antiFlingDetectedPlayers = {}
local antiFlingNeutralizeConn = nil
local antiFlingDetectConn = nil
local function toggleAntiFling(v)
    _G.AntiFlingEnabled = v
    if v then
        antiFlingDetectConn = RunService.Heartbeat:Connect(function()
            for _, pl in ipairs(Players:GetPlayers()) do
                if pl.Character and pl.Character:IsDescendantOf(workspace) and pl.Character.PrimaryPart then
                    local angular = pl.Character.PrimaryPart.AssemblyAngularVelocity.Magnitude
                    local linear = pl.Character.PrimaryPart.AssemblyLinearVelocity.Magnitude
                    if angular > 50 or linear > 100 then
                        if not antiFlingDetectedPlayers[pl.Name] then
                            Notify("Anti-Fling", "Flinger detected: " .. pl.Name, "Warning", nil, 5)
                            antiFlingDetectedPlayers[pl.Name] = true
                        end
                        for _, part in ipairs(pl.Character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                                part.AssemblyAngularVelocity = Vector3.zero
                                part.AssemblyLinearVelocity = Vector3.zero
                                part.CustomPhysicalProperties = PhysicalProperties.new(0,0,0)
                            end
                        end
                    end
                end
            end
        end)
        antiFlingNeutralizeConn = RunService.Heartbeat:Connect(function()
            if LocalPlayer.Character and LocalPlayer.Character.PrimaryPart then
                local root = LocalPlayer.Character.PrimaryPart
                if root.AssemblyLinearVelocity.Magnitude > 250 or root.AssemblyAngularVelocity.Magnitude > 250 then
                    root.AssemblyLinearVelocity = Vector3.zero
                    root.AssemblyAngularVelocity = Vector3.zero
                    if getgenv().OldPos then
                        root.CFrame = getgenv().OldPos
                    end
                else
                    getgenv().OldPos = root.CFrame
                end
            end
        end)
    else
        if antiFlingDetectConn then antiFlingDetectConn:Disconnect() end
        if antiFlingNeutralizeConn then antiFlingNeutralizeConn:Disconnect() end
        antiFlingDetectedPlayers = {}
    end
end
local function createFakeKnife()
    local lp = LocalPlayer
    if not lp.Character then
        Notify("Error", "No character", "Error", nil, 2)
        return
    end
    local bp = lp:WaitForChild("Backpack")
    if bp:FindFirstChild("Fake Knife") then
        Notify("Error", "Already have fake knife", "Error", nil, 2)
        return
    end
    local tool = Instance.new("Tool")
    tool.Name = "Fake Knife"
    tool.Grip = CFrame.new(0, -1.17, 0.07, 1,0,0,0,1,0,0,0,1)
    local handle = Instance.new("Part")
    handle.Size = Vector3.new(0.31, 3.42, 1.09)
    handle.Name = "Handle"
    handle.Transparency = 1
    handle.Parent = tool
    tool.Parent = bp
    local anim1 = Instance.new("Animation")
    anim1.AnimationId = "rbxassetid://2467567750"
    local anim2 = Instance.new("Animation")
    anim2.AnimationId = "rbxassetid://1957890538"
    local anims = {anim1, anim2}
    lp:GetMouse().Button1Down:Connect(function()
        if tool.Parent == lp.Character then
            local hum = lp.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                local an = hum:LoadAnimation(anims[math.random(1,2)])
                if an then an:Play() end
            end
        end
    end)
    Notify("Fake Knife", "Created in backpack", "Success", nil, 3)
end
local function godmode()
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.Name = "1"
        local clone = hum:Clone()
        clone.Parent = char
        clone.Name = "Humanoid"
        task.wait(0.1)
        char["1"]:Destroy()
        Camera.CameraSubject = clone
        local anim = char:FindFirstChild("Animate")
        if anim then
            anim.Disabled = true
            task.wait(0.1)
            anim.Disabled = false
        end
        Notify("Godmode", "Active", "Success", nil, 2)
    end
end
local knifeAuraConn
local function toggleKnifeAura(v)
    _G.KnifeAuraEnabled = v
    if v then
        knifeAuraConn = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if not char then return end
            local knife = char:FindFirstChild("Knife") or (LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChild("Knife"))
            if not knife then return end
            for _, pl in ipairs(Players:GetPlayers()) do
                if pl ~= LocalPlayer and pl.Character and not isWhitelisted(pl) then
                    local hrp = pl.Character:FindFirstChild("HumanoidRootPart")
                    if hrp and (hrp.Position - char.HumanoidRootPart.Position).Magnitude < _G.KnifeAuraRange then
                        if knife.Parent ~= char then
                            LocalPlayer.Character.Humanoid:EquipTool(knife)
                        end
                        local stab = knife:FindFirstChild("Stab")
                        if stab then
                            stab:FireServer("Down")
                        end
                        firetouchinterest(hrp, knife.Handle, 1)
                        firetouchinterest(hrp, knife.Handle, 0)
                    end
                end
            end
        end)
    else
        if knifeAuraConn then
            knifeAuraConn:Disconnect()
            knifeAuraConn = nil
        end
    end
end
local function getClosestTarget()
    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return nil end
    local myPos = char.HumanoidRootPart.Position
    local closest = nil
    local minDist = math.huge
    for _, pl in ipairs(Players:GetPlayers()) do
        if pl ~= LocalPlayer and pl.Character and pl.Character:FindFirstChild("HumanoidRootPart") and not isWhitelisted(pl) then
            local hrp = pl.Character.HumanoidRootPart
            local dist = (myPos - hrp.Position).Magnitude
            if dist < minDist then
                minDist = dist
                closest = pl
            end
        end
    end
    return closest
end
local function throwKnifeAt(target)
    if not target or not target.Character then return end
    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local knife = char:FindFirstChild("Knife") or (LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChild("Knife"))
    if not knife then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    if knife.Parent ~= char then
        hum:EquipTool(knife)
        task.wait(0.1)
        knife = char:FindFirstChild("Knife")
        if not knife then return end
    end
    local targetHRP = target.Character:FindFirstChild("HumanoidRootPart")
    if not targetHRP then return end
    local myHRP = char:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end
    local targetVel = targetHRP.AssemblyLinearVelocity or Vector3.zero
    local dist = (myHRP.Position - targetHRP.Position).Magnitude
    local travelTime = dist / 200
    local predictedPos = targetHRP.Position + targetVel * travelTime
    local throwRemote = knife:FindFirstChild("Throw") or knife:FindFirstChild("Remote")
    if throwRemote then
        local origin = myHRP.Position
        pcall(function()
            throwRemote:FireServer(CFrame.lookAt(origin, predictedPos), CFrame.new(predictedPos))
        end)
    end
end
local function throwAction()
    local char = LocalPlayer.Character
    if not char then return end
    local knife = char:FindFirstChild("Knife") or (LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChild("Knife"))
    if not knife then
        Notify("Throw", "No knife found", "Warning", nil, 2)
        return
    end
    local near, dist = nil, math.huge
    local myPos = char:FindFirstChild("HumanoidRootPart") and char.HumanoidRootPart.Position or Vector3.zero
    for _, pl in ipairs(Players:GetPlayers()) do
        if pl ~= LocalPlayer and pl.Character and pl.Character:FindFirstChild("HumanoidRootPart") then
            local d = (myPos - pl.Character.HumanoidRootPart.Position).Magnitude
            if d < dist then
                dist = d
                near = pl
            end
        end
    end
    if not near or not near.Character or not near.Character:FindFirstChild("HumanoidRootPart") then
        Notify("Throw", "No target found", "Warning", nil, 2)
        return
    end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    if knife.Parent == LocalPlayer.Backpack then
        hum:EquipTool(knife)
        task.wait(0.1)
        knife = char:FindFirstChild("Knife") 
        if not knife then return end
    end
    local targetHRP = near.Character.HumanoidRootPart
    local myHRP = char.HumanoidRootPart
    local origin = myHRP.Position
    local targetPos = targetHRP.Position
    local remote = knife:FindFirstChild("Throw") or knife:FindFirstChild("Remote")
    if not remote then
        local events = knife:FindFirstChild("Events")
        if events then
            remote = events:FindFirstChild("KnifeThrown") or events:FindFirstChild("Throw")
        end
    end
    if not remote then
        Notify("Throw", "Throw remote not found", "Error", nil, 2)
        return
    end
    local args = {
        [1] = CFrame.lookAt(origin, targetPos), 
        [2] = CFrame.new(targetPos)             
    }
    pcall(function()
        remote:FireServer(unpack(args))
    end)
end
local function throwKnife()
    throwAction()
end
local function knifeSilentAim()
    throwAction()
end
local function getMurderer()
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character then
            local hasKnife = p.Character:FindFirstChild("Knife") or (p.Backpack and p.Backpack:FindFirstChild("Knife"))
            if hasKnife then return p end
        end
    end
end
local function silentAimShoot()
    local char = LocalPlayer.Character
    if not char then
        Notify("SilentAim", "No character", "Error", nil, 2)
        return
    end
    local gun = char:FindFirstChild("Gun") or char:FindFirstChild("Revolver") or char:FindFirstChild("Pistol")
    if not gun then
        Notify("SilentAim", "No gun equipped", "Error", nil, 2)
        return
    end
    local murderer = getMurderer()
    if not murderer or not murderer.Character then
        Notify("SilentAim", "No murderer found", "Error", nil, 2)
        return
    end
    local targetPart = murderer.Character:FindFirstChild("Torso") or murderer.Character:FindFirstChild("HumanoidRootPart")
    if not targetPart then
        Notify("SilentAim", "Target has no body part", "Error", nil, 2)
        return
    end
    local targetPos = targetPart.Position
    local targetRoot = murderer.Character:FindFirstChild("HumanoidRootPart")
    local targetHum = murderer.Character:FindFirstChildOfClass("Humanoid")
    if not targetRoot or not targetHum then
        Notify("SilentAim", "Target has no root or humanoid", "Error", nil, 2)
        return
    end
    local origin = gun:FindFirstChild("Handle") or gun:FindFirstChild("Gun") or char.HumanoidRootPart
    local originPos = origin.Position
    local predicted = targetPos
    local track = _G.TargetTracking[murderer.Name]
    local now = os.clock()
    if track then
        local dt = now - track.prevTime
        if dt > 0 and dt < 0.5 then
            local velocity = (targetRoot.Position - track.prevPos) / dt
            local distance = (targetRoot.Position - originPos).Magnitude
            local bulletSpeed = 2000
            local travelTime = distance / bulletSpeed
            local leadTime = travelTime + 0.08 
            predicted = targetPos + velocity * leadTime
            local maxLead = 10
            local leadDist = (predicted - targetPos).Magnitude
            if leadDist > maxLead then
                predicted = targetPos + (predicted - targetPos).Unit * maxLead
            end
        end
        track.prevPos = targetRoot.Position
        track.prevTime = now
    else
        _G.TargetTracking[murderer.Name] = { prevPos = targetRoot.Position, prevTime = now, velocity = Vector3.zero }
    end
    local shoot = gun:FindFirstChild("Shoot") or gun:FindFirstChild("Fire")
    if shoot then
        local aimCF = CFrame.lookAt(originPos, predicted)
        pcall(function()
            shoot:FireServer(aimCF, CFrame.new(predicted))
        end)
        pcall(function()
            shoot:FireServer(aimCF)
        end)
    else
        Notify("SilentAim", "Shoot remote not found", "Error", nil, 2)
    end
end
local aimbotActive = false
local function toggleAimbot(v)
    _G.AimbotEnabled = v
    if v then
        aimbotActive = true
        task.spawn(function()
            while aimbotActive do
                local sheriff = getTargetByRole("Sheriff")
                if sheriff ~= LocalPlayer then
                    local murderer = getTargetByRole("Murderer")
                    if murderer and murderer.Character then
                        local target = murderer.Character:FindFirstChild("HumanoidRootPart")
                        if target then
                            Camera.CFrame = CFrame.lookAt(Camera.CFrame.Position, target.Position)
                        end
                    end
                end
                task.wait()
            end
        end)
    else
        aimbotActive = false
    end
end
local function flingPlayer(target)
    if not target or target == LocalPlayer then return end
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local root = hum and hum.RootPart
    local tchar = target.Character
    if not tchar or not root then return end
    local thum = tchar:FindFirstChildOfClass("Humanoid")
    local troot = thum and thum.RootPart
    local thead = tchar:FindFirstChild("Head")
    if thum and thum.Sit then return end
    local oldSubject = Camera.CameraSubject
    if thead then
        Camera.CameraSubject = thead
    elseif thum then
        Camera.CameraSubject = thum
    end
    if root.Velocity.Magnitude < 50 then
        getgenv().OldPos = root.CFrame
    end
    workspace.FallenPartsDestroyHeight = 0/0
    local bv = Instance.new("BodyVelocity")
    bv.Parent = root
    bv.Velocity = Vector3.zero
    bv.MaxForce = Vector3.new(9e9,9e9,9e9)
    hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    local ang = 0
    for i = 1, 150 do
        if not FlingActive or not root or not thum then break end
        ang = ang + 180
        root.CFrame = CFrame.new(troot.Position) * CFrame.new(0, 2.5, 0) * CFrame.Angles(math.rad(ang), 0, 0)
        root.Velocity = Vector3.new(2e8, 2.5e9, 2e8)
        root.RotVelocity = Vector3.new(2.5e9, 2.5e9, 2.5e9)
        task.wait(0.03)
    end
    bv:Destroy()
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Velocity = Vector3.zero
            part.RotVelocity = Vector3.zero
        end
    end
    hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    if oldSubject and oldSubject.Parent then
        Camera.CameraSubject = oldSubject
    else
        Camera.CameraSubject = hum
    end
    if getgenv().OldPos then
        local attempts = 0
        repeat
            root.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
            char:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0))
            hum:ChangeState(Enum.HumanoidStateType.GettingUp)
            task.wait()
            attempts = attempts + 1
        until (root.Position - getgenv().OldPos.p).Magnitude < 25 or attempts > 50
        workspace.FallenPartsDestroyHeight = getgenv().FPDH or -500
    end
    hum.PlatformStand = false
    hum:ChangeState(Enum.HumanoidStateType.Running)
    task.wait(0.1)
    hum.WalkSpeed = _G.WalkSpeed or 16
end
local function flingRole(role)
    local pl = getTargetByRole(role)
    if pl then
        FlingActive = true
        task.spawn(function()
            flingPlayer(pl)
            FlingActive = false
        end)
    else
        Notify("Error", "No " .. role .. " found", "Error", nil, 2)
    end
end
local extremeFlingThread = nil
local extremeFlingActive = false
local function extremeFlingLoop()
    local lp = LocalPlayer
    local movel = 0.1
    while extremeFlingActive do
        RunService.Heartbeat:Wait()
        local char = lp.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            local vel = hrp.Velocity
            hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
            RunService.RenderStepped:Wait()
            if hrp then
                hrp.Velocity = vel
            end
            RunService.Stepped:Wait()
            if hrp then
                hrp.Velocity = vel + Vector3.new(0, movel, 0)
                movel = -movel
            end
        end
    end
end
local function toggleExtremeFling(state)
    extremeFlingActive = state
    if state then
        if extremeFlingThread then
            coroutine.close(extremeFlingThread)
            extremeFlingThread = nil
        end
        extremeFlingThread = coroutine.create(extremeFlingLoop)
        coroutine.resume(extremeFlingThread)
        Notify("Extreme Fling", "ON", "Success", nil, 2)
    else
        extremeFlingActive = false
        if extremeFlingThread then
            coroutine.close(extremeFlingThread)
            extremeFlingThread = nil
        end
        local char = LocalPlayer.Character
        if char then
            local hrp = char:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.Velocity = Vector3.zero
                hrp.RotVelocity = Vector3.zero
            end
        end
        Notify("Extreme Fling", "OFF", "Info", nil, 2)
    end
end
local spectateEnabled = false
local spectateDropdown = nil
local function updateSpectateList()
    if spectateDropdown then
        local names = getPlayersNames()
        spectateDropdown:SetValues(names)
        spectateDropdown:SetValue(nil)
        Notify("Spectate", "Player list refreshed", "Info", nil, 2)
    end
end
local function startSpectate(playerName)
    if not spectateEnabled then
        Notify("Spectate", "Enable Spectate first!", "Warning", nil, 2)
        return
    end
    if not playerName or playerName == "" then
        Camera.CameraSubject = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        Notify("Spectate", "Stopped", "Info", nil, 2)
        return
    end
    local pl = Players:FindFirstChild(playerName)
    if pl and pl.Character and pl.Character:FindFirstChildOfClass("Humanoid") then
        Camera.CameraSubject = pl.Character:FindFirstChildOfClass("Humanoid")
        Notify("Spectate", "Now spectating: " .. pl.Name, "Info", nil, 2)
    else
        Notify("Spectate", "Player not found or no character", "Error", nil, 2)
    end
end
local ctrlClickTP = false
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and input.UserInputType == Enum.UserInputType.MouseButton1 and ctrlClickTP then
        local mouse = LocalPlayer:GetMouse()
        if not mouse then return end
        local unitRay = Camera:ScreenPointToRay(mouse.X, mouse.Y)
        local ray = Ray.new(unitRay.Origin, unitRay.Direction * 1000)
        local hit, pos = workspace:FindPartOnRay(ray, LocalPlayer.Character)
        if hit and pos then
            LocalPlayer.Character:MoveTo(pos)
            Notify("Teleport", "Teleported to " .. tostring(pos), "Info", nil, 2)
        end
    end
end)
local timerLabel = nil
local timerTask = nil
local function toggleRoundTimer(v)
    _G.RoundTimer = v
    if v then
        timerLabel = Instance.new("TextLabel")
        timerLabel.Parent = CoreGui
        timerLabel.BackgroundTransparency = 1
        timerLabel.TextColor3 = Color3.fromRGB(255,255,255)
        timerLabel.TextScaled = true
        timerLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        timerLabel.Position = UDim2.fromScale(0.5, 0.15)
        timerLabel.Size = UDim2.fromOffset(200, 50)
        timerLabel.Font = Enum.Font.GothamBold
        timerLabel.Text = "Round Timer: --"
        timerTask = task.spawn(function()
            while _G.RoundTimer do
                pcall(function()
                    local timerRemote = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("Extras") and ReplicatedStorage.Remotes.Extras:FindFirstChild("GetTimer")
                    if timerRemote then
                        local timeLeft = timerRemote:InvokeServer()
                        if timeLeft and timeLeft ~= -1 then
                            local minutes = math.floor(timeLeft / 60)
                            local seconds = timeLeft % 60
                            timerLabel.Text = string.format("Round Timer: %02d:%02d", minutes, seconds)
                        else
                            timerLabel.Text = "Round Timer: --"
                        end
                    end
                end)
                task.wait(0.5)
            end
        end)
    else
        if timerLabel then timerLabel:Destroy() end
        if timerTask then task.cancel(timerTask) end
    end
end
local fpsBoostRunning = false
local fpsBoostConn = nil
local function toggleImproveFPS(v)
    _G.ImproveFPS = v
    if v then
        if not fpsBoostRunning then
            fpsBoostRunning = true
            pcall(function()
                local Terrain = workspace:FindFirstChildOfClass('Terrain')
                if Terrain then
                    Terrain.WaterWaveSize = 0
                    Terrain.WaterWaveSpeed = 0
                    Terrain.WaterReflectance = 0
                    Terrain.WaterTransparency = 0
                end
                game.Lighting.GlobalShadows = false
                game.Lighting.FogEnd = 9e9
                settings().Rendering.QualityLevel = 1
                for _, v in ipairs(workspace:GetDescendants()) do
                    if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                        v.Material = Enum.Material.Plastic
                        v.Reflectance = 0
                    elseif v:IsA("Decal") then
                        v.Transparency = 1
                    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                        v.Lifetime = NumberRange.new(0)
                    elseif v:IsA("Explosion") then
                        v.BlastPressure = 1
                        v.BlastRadius = 1
                    end
                end
                for _, v in ipairs(game.Lighting:GetDescendants()) do
                    if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                        v.Enabled = false
                    end
                end
                if fpsBoostConn then fpsBoostConn:Disconnect() end
                fpsBoostConn = workspace.DescendantAdded:Connect(function(child)
                    if child:IsA('ForceField') or child:IsA('Sparkles') or child:IsA('Smoke') or child:IsA('Fire') then
                        task.wait(0.1)
                        child:Destroy()
                    end
                end)
            end)
            Notify("FPS Boost", "Enabled", "Success", nil, 3)
        end
    else
        fpsBoostRunning = false
        if fpsBoostConn then
            fpsBoostConn:Disconnect()
            fpsBoostConn = nil
        end
        Notify("FPS Boost", "Disabled", "Info", nil, 2)
    end
end
local function toggleRTX(v)
    _G.RTXShaders = v
    local Lighting = game:GetService("Lighting")
    if v then
        local bloom = Instance.new("BloomEffect", Lighting) bloom.Name = "RTX_Bloom" bloom.Intensity = 0.1 bloom.Size = 100
        local cc = Instance.new("ColorCorrectionEffect", Lighting) cc.Name = "RTX_CC" cc.Saturation = 0.05 cc.TintColor = Color3.fromRGB(255, 224, 219)
        local sun = Instance.new("SunRaysEffect", Lighting) sun.Name = "RTX_SunRays" sun.Intensity = 0.05
        Lighting.Brightness = 2.14; Lighting.ColorShift_Bottom = Color3.fromRGB(11,0,20); Lighting.ColorShift_Top = Color3.fromRGB(240,127,14); Lighting.OutdoorAmbient = Color3.fromRGB(34,0,49); Lighting.ClockTime = 6.7
        Notify("RTX Shaders", "Enabled", "Success", nil, 3)
    else
        for _, child in ipairs(Lighting:GetChildren()) do if child.Name:find("RTX") then child:Destroy() end end
        Lighting.Brightness = 2; Lighting.ColorShift_Bottom = Color3.new(0,0,0); Lighting.ColorShift_Top = Color3.new(0,0,0); Lighting.OutdoorAmbient = Color3.fromRGB(157,157,157); Lighting.ClockTime = 14
    end
end
local korbloxConn
local function toggleKorblox(v)
    _G.KorbloxEnabled = v
    if v then
        if korbloxConn then korbloxConn:Disconnect() end
        korbloxConn = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if char then
                for _, pname in ipairs({"RightLowerLeg", "RightUpperLeg", "RightFoot"}) do
                    local part = char:FindFirstChild(pname)
                    if part then
                        if pname == "RightLowerLeg" then
                            part.MeshId = "http://www.roblox.com/asset/?id=902942093"
                            part.Transparency = 1
                        elseif pname == "RightUpperLeg" then
                            part.MeshId = "http://www.roblox.com/asset/?id=902942096"
                            part.TextureID = "http://www.roblox.com/asset/?id=902843398"
                        elseif pname == "RightFoot" then
                            part.MeshId = "http://www.roblox.com/asset/?id=902942089"
                            part.Transparency = 1
                        end
                    end
                end
            end
        end)
    else
        if korbloxConn then
            korbloxConn:Disconnect()
            korbloxConn = nil
        end
    end
end
local headlessConn
local function toggleHeadless(v)
    _G.HeadlessEnabled = v
    if v then
        if headlessConn then headlessConn:Disconnect() end
        headlessConn = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if char then
                local head = char:FindFirstChild("Head")
                if head then
                    head.MeshId = "http://www.roblox.com/asset/?id=6686307858"
                    head.TextureID = "http://www.roblox.com/asset/?id=6686307858"
                    head.Transparency = 1
                end
            end
        end)
    else
        if headlessConn then
            headlessConn:Disconnect()
            headlessConn = nil
        end
    end
end
local function giveBoombox()
    local bp = LocalPlayer:WaitForChild("Backpack", 5)
    if not bp then
        Notify("Error", "No backpack", "Error", nil, 2)
        return
    end
    if bp:FindFirstChild("Boombox") then
        Notify("Error", "Already have", "Error", nil, 2)
        return
    end
    local boombox = game:GetObjects("rbxassetid://740618400")[1]
    if not boombox then
        Notify("Error", "Failed to load", "Error", nil, 2)
        return
    end
    boombox.Parent = bp
    pcall(function()
        loadstring(boombox.Client.Source)()
        loadstring(boombox.Server.Source)()
    end)
    Notify("Boombox", "Added to backpack", "Success", nil, 3)
end
local prankBombConnection
local function placePrankBomb()
    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local template = ReplicatedStorage:FindFirstChild("PrankBomb")
    if not template then
        Notify("Error", "No template", "Error", nil, 2)
        return
    end
    local bomb = template:Clone()
    bomb.Parent = workspace
    bomb:PivotTo(char.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0))
end
local function togglePrankBombKeybind(key)
    if prankBombConnection then
        prankBombConnection:Disconnect()
    end
    if key and key ~= "NONE" and _G.PrankBombEnabled then
        prankBombConnection = UserInputService.InputBegan:Connect(function(input, gp)
            if gp then return end
            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode[key] then
                placePrankBomb()
            end
        end)
    end
end
local function onPrankBombToggle(v)
    _G.PrankBombEnabled = v
    saveSettings()
    togglePrankBombKeybind(_G.PrankBombKey)
end
local function playEmote(name)
    if PlayEmoteEvent then
        pcall(function() PlayEmoteEvent:Fire(name) end)
    else
        Notify("Error", "Emote remote not found", "Error", nil, 2)
    end
end
local mobileShootBtn = nil
local function createMobileButton()
    if mobileShootBtn then return end
    mobileShootBtn = makeQuickButton("AIM", "AIM", "Silent Aim", -275, -230, silentAimShoot, GUN_ICON)
end
local function removeMobileButton()
    removeQuickButton("AIM")
    mobileShootBtn = nil
end
local mobileKnifeBtn = nil
local function createMobileKnifeButton()
    if mobileKnifeBtn then return end
    mobileKnifeBtn = makeQuickButton("KNIFE", "KNIFE", "Throw Knife", -200, -230, knifeSilentAim, KNIFE_ICON)
end
local function removeMobileKnifeButton()
    removeQuickButton("KNIFE")
    mobileKnifeBtn = nil
end
local pcKeybindConnection
local function setupPCKeybind()
    if pcKeybindConnection then pcKeybindConnection:Disconnect() end
    local key = _G.SilentAimKey
    if type(key) ~= "string" then key = "E" _G.SilentAimKey = key end
    if _G.SilentAimEnabled and key ~= "NONE" then
        local code = Enum.KeyCode[key] if not code then code = Enum.KeyCode.E _G.SilentAimKey = "E" end
        pcKeybindConnection = UserInputService.InputBegan:Connect(function(input, gp)
            if gp then return end
            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == code then
                silentAimShoot()
            end
        end)
    end
end
local function killAll()
    if killAllActive then killAllActive = false Notify("Kill All", "Stopped", "Info", nil, 2) return end
    local char = LocalPlayer.Character
    local knife = char and (char:FindFirstChild("Knife") or (LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChild("Knife")))
    if not knife then Notify("Error", "No knife", "Error", nil, 2) return end
    killAllActive = true Notify("Kill All", "Running", "Info", nil, 3)
    task.spawn(function()
        while killAllActive do
            local found = false
            for _, pl in ipairs(Players:GetPlayers()) do
                if pl ~= LocalPlayer and pl.Character and not isWhitelisted(pl) then
                    local hum = pl.Character:FindFirstChildOfClass("Humanoid")
                    local tr = pl.Character:FindFirstChild("HumanoidRootPart")
                    if hum and hum.Health > 0 and tr then
                        found = true
                        local myRoot = char:FindFirstChild("HumanoidRootPart")
                        local myHum = char:FindFirstChildOfClass("Humanoid")
                        if not myRoot or not myHum or myHum.Health <= 0 then
                            killAllActive = false
                            break
                        end
                        knife = char:FindFirstChild("Knife") or (LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChild("Knife"))
                        if knife and knife.Parent ~= char then
                            myHum:EquipTool(knife)
                            task.wait(0.1)
                        end
                        local st = tick()
                        repeat
                            if not killAllActive or not tr.Parent or hum.Health <= 0 then break end
                            myRoot.CFrame = tr.CFrame * CFrame.new(0,0,1.5)
                            if knife and knife.Parent == char then knife:Activate() end
                            task.wait()
                        until hum.Health <= 0 or tick() - st > 3
                    end
                end
            end
            if not found then killAllActive = false Notify("Kill All", "Done", "Success", nil, 3) break end
            task.wait(0.1)
        end
        killAllActive = false
    end)
end
local function trapPlayer(selectedPlayer)
    if not selectedPlayer or not selectedPlayer.Character then return end
    local trap = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Trap")
    if not trap then return end
    local activate = trap:FindFirstChild("Activate")
    if activate then
        activate:FireServer(selectedPlayer.Character.HumanoidRootPart.CFrame)
    end
end
local function updateMovement()
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if not hum or hum.Health <= 0 then return end
    local inAir = hum:GetState() == Enum.HumanoidStateType.Freefall or hum:GetState() == Enum.HumanoidStateType.Jumping
    hum.WalkSpeed = (_G.SpeedGlitchEnabled and inAir) and _G.GlitchSpeed or _G.WalkSpeed
    hum.JumpPower = _G.JumpPower
    hum.UseJumpPower = true
end
local flyConnection
local function toggleFly(v)
    _G.FlyEnabled = v
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    if v then
        local bv = Instance.new("BodyVelocity")
        bv.Velocity = Vector3.zero
        bv.MaxForce = Vector3.new(9e9,9e9,9e9)
        bv.Parent = root
        local bg = Instance.new("BodyGyro")
        bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
        bg.CFrame = Camera.CFrame
        bg.Parent = root
        flyConnection = RunService.RenderStepped:Connect(function()
            if not _G.FlyEnabled then return end
            local cam = Camera
            bg.CFrame = cam.CFrame
            local vel = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then vel += cam.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then vel -= cam.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then vel -= cam.CFrame.RightVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then vel += cam.CFrame.RightVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then vel += Vector3.new(0,1,0) end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then vel -= Vector3.new(0,1,0) end
            bv.Velocity = vel * _G.FlySpeed
        end)
    else
        if flyConnection then flyConnection:Disconnect() end
        if root:FindFirstChild("BodyVelocity") then root.BodyVelocity:Destroy() end
        if root:FindFirstChild("BodyGyro") then root.BodyGyro:Destroy() end
    end
end
local noclipConnection
local function toggleNoclip(v)
    _G.NoclipEnabled = v
    if v then
        noclipConnection = RunService.Stepped:Connect(function()
            if LocalPlayer.Character then
                for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        if noclipConnection then noclipConnection:Disconnect() end
    end
end
local antiAfkConnection
local function toggleAntiAfk(v)
    _G.AntiAfkEnabled = v
    if v then
        antiAfkConnection = Players.LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    else
        if antiAfkConnection then antiAfkConnection:Disconnect() end
    end
end
local function easyGlitchSetup(v)
    _G.EasyGlitch = v
    if not v then return end
    local spamThreshold = 1
    local teleportDistance = 1.2
    local wallDistance = 0.4
    local lastEquip = 0
    local lastTool = nil
    local function checkWall()
        local char = LocalPlayer.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then return false end
        local hrp = char.HumanoidRootPart
        local look = hrp.CFrame.LookVector * Vector3.new(1,0,1)
        local ray = workspace:Raycast(hrp.Position, look.Unit * wallDistance)
        return ray ~= nil
    end
    local function teleportForward()
        local char = LocalPlayer.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then return end
        local hrp = char.HumanoidRootPart
        hrp.Position += hrp.CFrame.LookVector * Vector3.new(1,0,1).Unit * teleportDistance
    end
    local function onToolEquipped(tool)
        if not _G.EasyGlitch then return end
        local now = tick()
        if lastTool == tool and (now - lastEquip) < spamThreshold then
            if checkWall() then teleportForward() end
        end
        lastEquip = now
        lastTool = tool
    end
    local function setup(char)
        for _, tool in ipairs(char:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Equipped:Connect(function() onToolEquipped(tool) end)
            end
        end
        local backpack = LocalPlayer:WaitForChild("Backpack")
        for _, tool in ipairs(backpack:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Equipped:Connect(function() onToolEquipped(tool) end)
            end
        end
        backpack.ChildAdded:Connect(function(tool)
            if tool:IsA("Tool") then
                tool.Equipped:Connect(function() onToolEquipped(tool) end)
            end
        end)
        char.ChildAdded:Connect(function(child)
            if child:IsA("Tool") then
                child.Equipped:Connect(function() onToolEquipped(child) end)
            end
        end)
    end
    if LocalPlayer.Character then setup(LocalPlayer.Character) end
    LocalPlayer.CharacterAdded:Connect(setup)
end
local function layDown()
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.Sit = true
        task.wait(0.1)
        local root = hum.RootPart or char:FindFirstChild("HumanoidRootPart")
        if root then
            root.CFrame = root.CFrame * CFrame.Angles(math.pi*0.5, 0, 0)
        end
        for _, anim in ipairs(hum:GetPlayingAnimationTracks()) do
            anim:Stop()
        end
    end
end
local function sitDown()
    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then hum.Sit = true end
end
local coinFarmThread = nil
local function startCoinFarm()
    if coinFarmThread then return end
    _G.CoinFarmEnabled = true
    coinFarmThread = task.spawn(function()
        while _G.CoinFarmEnabled do
            if not inRound or isDead then task.wait(1) continue end
            local char = LocalPlayer.Character if not char then task.wait(1) continue end
            local hrp = char:FindFirstChild("HumanoidRootPart")
            local hum = char:FindFirstChildOfClass("Humanoid")
            if not hrp or not hum or hum.Health <= 0 then isDead = true task.wait(1) continue end
            local nearest, nearestDist = nil, math.huge
            for _, obj in ipairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") and (obj.Name == "Coin_Server" or obj.Name == "BeachBall") and obj:FindFirstChild("TouchInterest") then
                    local dist = (obj.Position - hrp.Position).Magnitude
                    if dist < nearestDist then nearestDist = dist nearest = obj end
                end
            end
            if nearest then
                local tween = TweenService:Create(hrp, TweenInfo.new(0.5 / _G.CoinFarmSpeed, Enum.EasingStyle.Linear), {CFrame = nearest.CFrame})
                tween:Play()
                tween.Completed:Wait()
                task.wait(0.1)
            else
                task.wait(1)
            end
        end
        coinFarmThread = nil
    end)
end
local function stopCoinFarm()
    _G.CoinFarmEnabled = false
    if coinFarmThread then task.cancel(coinFarmThread) coinFarmThread = nil end
end
local function toggleCoinFarm(v)
    if v then startCoinFarm() else stopCoinFarm() end
end
local function rejoin()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end
local function respawn()
    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then hum.Health = 0 end
end
local function teleportToSpawn()
    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local hrp = char.HumanoidRootPart
    local spawns = {}
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj.Name == "Spawn" or obj.Name == "PlayerSpawn" then
            if obj:IsA("BasePart") then
                table.insert(spawns, obj)
            end
        end
    end
    if #spawns > 0 then
        hrp.CFrame = spawns[1].CFrame * CFrame.new(0, 2.5, 0)
    else
        Notify("Teleport", "No spawn found", "Error", nil, 2)
    end
end
local function sendRoleNames()
    local murderer = getTargetByRole("Murderer")
    local sheriff = getTargetByRole("Sheriff")
    local msg = "Murderer: " .. (murderer and murderer.Name or "None") .. " | Sheriff: " .. (sheriff and sheriff.Name or "None")
    local chatService = game:GetService("TextChatService")
    local channels = chatService:FindFirstChild("TextChannels")
    if channels then
        for _, ch in ipairs(channels:GetChildren()) do
            if ch:IsA("TextChannel") and ch.Name ~= "RBXSystem" then
                pcall(function() ch:SendAsync(msg) end)
            end
        end
    else
        Notify("Error", "No chat channels", "Error", nil, 2)
    end
end
local Tabs = {}
Tabs.Main = Window:AddTab({ Title = "Main", Icon = "home" })
Tabs.Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" })
Tabs.Combat = Window:AddTab({ Title = "Combat", Icon = "crosshair" })
Tabs.Player = Window:AddTab({ Title = "Player", Icon = "user" })
Tabs.AutoFarm = Window:AddTab({ Title = "Farm", Icon = "coins" })
Tabs.Whitelist = Window:AddTab({ Title = "Whitelist", Icon = "shield" })
Tabs.Emotes = Window:AddTab({ Title = "Emotes", Icon = "smile" })
Tabs.Teleport = Window:AddTab({ Title = "Teleport", Icon = "map-pin" })
Tabs.Misc = Window:AddTab({ Title = "Misc", Icon = "wrench" })
Tabs.Atmosphere = Window:AddTab({ Title = "Atmosphere", Icon = "cloud" })
Tabs.Credits = Window:AddTab({ Title = "Credits", Icon = "info" })
Tabs.Credits:AddParagraph({
    Title = "Credits",
    Content = "Made by cyrus_beacony"
})
Tabs.Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
local protSec = Tabs.Main:AddCollapsibleSection("Protection", "lucide/shield", true)
protSec:AddToggle("AntiFling", { Title = "Anti-Fling (Enhanced)", Default = false, Callback = function(v)
    toggleAntiFling(v)
    saveSettings()
end })
protSec:AddToggle("AntiTrap", { Title = "Anti-Trap", Default = false, Callback = function(v)
    toggleAntiTrap(v)
    saveSettings()
end })
Tabs.Main:AddDivider()
local function grabGun()
    local found = false
    for gd,_ in pairs(gunDropCache) do
        if gd and gd.Parent then found = true break end
    end
    if not found then Notify("Error", "No dropped gun!", "Error", nil, 2) return end
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if root then
        for gd,_ in pairs(gunDropCache) do
            if gd and gd.Parent then
                gd:PivotTo(root.CFrame)
                local ti = gd:FindFirstChild("TouchInterest", true) or gd:FindFirstChildWhichIsA("TouchTransmitter", true)
                if ti then
                    firetouchinterest(root, gd, 0)
                    task.wait()
                    firetouchinterest(root, gd, 1)
                end
                break
            end
        end
    end
end
makeQuickButton("GUN", "GUN", "Grab Gun", -200, -70, grabGun)
makeQuickButton("STOP", "STOP", "Stop Fling", -275, -70, function() FlingActive = false end)
makeQuickButton("MURD", "MURD", "Fling Murderer", -200, -150, function() flingRole("Murderer") end)
makeQuickButton("SHER", "SHER", "Fling Sheriff", -275, -150, function() flingRole("Sheriff") end)
local lockBtn
lockBtn = makeQuickButton("LOCK", "\u{1F513}", "Lock Buttons", -350, -70, function()
    setQuickLocked(not quickLocked)
    lockBtn.Text = quickLocked and "\u{1F512}" or "\u{1F513}"
    Notify("Buttons", quickLocked and "Locked in place" or "Unlocked - drag to move", "Info", nil, 2)
end)
Tabs.Main:AddToggle("QuickButtonsToggle", { Title = "Show Quick Buttons", Default = true, Callback = function(v)
    quickGui.Enabled = v
end })
local btnVisSec = Tabs.Main:AddCollapsibleSection("Button Visibility", "lucide/eye", false)
for _, info in ipairs({
    { "GUN", "Grab Gun" },
    { "STOP", "Stop Fling" },
    { "MURD", "Fling Murderer" },
    { "SHER", "Fling Sheriff" },
    { "KNIFE", "Throw Knife" },
    { "AIM", "Silent Aim" },
    { "LOCK", "Lock Button" },
}) do
    btnVisSec:AddToggle("QBShow" .. info[1], { Title = info[2], Default = true, Callback = function(v)
        setQuickHidden(info[1], not v)
    end })
end
local espSec = Tabs.Visuals:AddCollapsibleSection("ESP Settings", "lucide/eye", true)
espSec:AddToggle("EspMaster", { Title = "Enable ESP", Default = false, Callback = function(v)
    _G.EspEnabled = v
    if not v then clearESP() end
    saveSettings()
end })
espSec:AddToggle("NamesESPToggle", { Title = "Player Names", Default = false, Callback = function(v)
    _G.NamesESP = v
    saveSettings()
end })
espSec:AddToggle("GunEspToggle", { Title = "Show Dropped Guns", Default = false, Callback = function(v)
    _G.GunEspEnabled = v
    saveSettings()
end })
local trapLocks = setmetatable({}, { __mode = "k" })
local function isTrapVisual(obj)
    return obj.Name == "TrapVisual" and obj:IsA("BasePart")
end
local function lockTrap(obj)
    if not isTrapVisual(obj) then return end
    obj.Transparency = 0
    if trapLocks[obj] then return end
    -- keep it visible even if the game tries to hide it again
    trapLocks[obj] = obj:GetPropertyChangedSignal("Transparency"):Connect(function()
        if _G.TrapESP and obj.Transparency ~= 0 then
            obj.Transparency = 0
        end
    end)
end
local function unlockTrap(obj)
    local c = trapLocks[obj]
    if c then c:Disconnect() trapLocks[obj] = nil end
    if isTrapVisual(obj) then obj.Transparency = 1 end
end
workspace.DescendantAdded:Connect(function(obj)
    if _G.TrapESP and isTrapVisual(obj) then lockTrap(obj) end
end)
espSec:AddToggle("TrapESPToggle", { Title = "Show Traps (Permanent)", Default = false, Callback = function(v)
    _G.TrapESP = v
    saveSettings()
    for _, obj in ipairs(workspace:GetDescendants()) do
        if isTrapVisual(obj) then
            if v then lockTrap(obj) else unlockTrap(obj) end
        end
    end
end })
Tabs.Visuals:AddDivider()
local camSec = Tabs.Visuals:AddCollapsibleSection("Camera", "lucide/camera", true)
camSec:AddSlider("FOV", { Title = "FOV", Min=30, Max=120, Default=70, Rounding=0, Callback = function(v)
    _G.FOVValue = v
    Camera.FieldOfView = v
    saveSettings()
end })
camSec:AddToggle("XrayToggle", { Title = "X-Ray", Default = false, Callback = function(v)
    toggleXray(v)
    saveSettings()
end })
Tabs.Visuals:AddDivider()
local visMods = Tabs.Visuals:AddCollapsibleSection("Visual Mods", "lucide/brush", true)
visMods:AddToggle("ImproveFPS", { Title = "Improve FPS (Enhanced)", Default = false, Callback = function(v)
    toggleImproveFPS(v)
    saveSettings()
end })
visMods:AddToggle("KorbloxToggle", { Title = "Korblox Leg", Default = false, Callback = function(v)
    toggleKorblox(v)
    saveSettings()
end })
visMods:AddToggle("HeadlessToggle", { Title = "Headless", Default = false, Callback = function(v)
    toggleHeadless(v)
    saveSettings()
end })
visMods:AddButton({ Title = "Give Boombox", Callback = giveBoombox })
local sheriffSec = Tabs.Combat:AddCollapsibleSection("Sheriff (Gun)", "lucide/crosshair", true)
sheriffSec:AddToggle("SilentAimToggle", { Title = "Silent Aim (PC)", Default = false, Callback = function(v)
    _G.SilentAimEnabled = v
    setupPCKeybind()
    saveSettings()
end })
sheriffSec:AddKeybind("SilentAimKeybind", { Title = "Silent Aim Key", Default = "E", Callback = function(key)
    _G.SilentAimKey = key
    setupPCKeybind()
    saveSettings()
end })
sheriffSec:AddToggle("SilentAimMobileToggle", { Title = "Silent Aim (Mobile)", Default = false, Callback = function(v)
    _G.SilentAimMobile = v
    if v then createMobileButton() else removeMobileButton() end
    saveSettings()
end })
sheriffSec:AddToggle("AimbotToggle", { Title = "Aimbot (Sheriff)", Default = false, Callback = function(v)
    toggleAimbot(v)
    saveSettings()
end })
sheriffSec:AddKeybind("AimbotKeybind", { Title = "Aimbot Key", Default = "Q", Callback = function(key)
    _G.AimbotKey = key
    saveSettings()
end })
local murdererSec = Tabs.Combat:AddCollapsibleSection("Murderer (Knife)", "lucide/sword", true)
murdererSec:AddButton({ Title = "Kill All", Callback = killAll })
murdererSec:AddToggle("KnifeAuraToggle", { Title = "Knife Aura", Default = false, Callback = function(v)
    toggleKnifeAura(v)
    saveSettings()
end })
murdererSec:AddSlider("KnifeAuraRange", { Title = "Aura Range", Min=5, Max=100, Default=20, Rounding=0, Callback = function(v)
    _G.KnifeAuraRange = v
    saveSettings()
end })
murdererSec:AddToggle("KnifeSilentAimPCToggle", { Title = "Knife Silent Aim (PC)", Default = false, Callback = function(v)
    _G.KnifeSilentAimEnabled = v
    saveSettings()
end })
murdererSec:AddKeybind("KnifeSilentAimPCKeybind", { Title = "Keybind", Default = "R", Callback = function(key)
    _G.KnifeSilentAimKey = key
    saveSettings()
end })
murdererSec:AddToggle("KnifeSilentAimMobileToggle", { Title = "Knife Silent Aim (Mobile)", Default = false, Callback = function(v)
    _G.KnifeMobileEnabled = v
    if v then
        createMobileKnifeButton()
    else
        removeMobileKnifeButton()
    end
    saveSettings()
end })
murdererSec:AddButton({ Title = "Create Fake Knife", Callback = createFakeKnife })
local commonSec = Tabs.Combat:AddCollapsibleSection("General", "lucide/star", true)
commonSec:AddButton({ Title = "Godmode", Callback = godmode })
local trapSec = Tabs.Combat:AddCollapsibleSection("Trap", "lucide/trap", true)
local trapDropdown = trapSec:AddDropdown("TrapTarget", { Title = "Target", Values = getPlayersNames(), Default = "" })
trapSec:AddButton({ Title = "Trap Selected", Callback = function()
    local name = trapDropdown.Value
    if name and name ~= "" then
        local plr = Players:FindFirstChild(name)
        if plr then trapPlayer(plr) end
    end
end })
local moveSec = Tabs.Player:AddCollapsibleSection("Movement", "lucide/activity", true)
moveSec:AddSlider("WalkSpeed", { Title = "Walk Speed", Min=16, Max=200, Default=16, Rounding=0, Callback = function(v)
    _G.WalkSpeed = v
    updateMovement()
    saveSettings()
end })
moveSec:AddSlider("JumpPower", { Title = "Jump Power", Min=50, Max=300, Default=50, Rounding=0, Callback = function(v)
    _G.JumpPower = v
    updateMovement()
    saveSettings()
end })
moveSec:AddToggle("SpeedGlitch", { Title = "Speed Glitch", Default = false, Callback = function(v)
    _G.SpeedGlitchEnabled = v
    saveSettings()
end })
moveSec:AddSlider("GlitchSpeed", { Title = "Glitch Speed", Min=16, Max=300, Default=35, Rounding=0, Callback = function(v)
    _G.GlitchSpeed = v
    saveSettings()
end })
Tabs.Player:AddDivider()
local flySec = Tabs.Player:AddCollapsibleSection("Fly & Noclip", "lucide/plane", true)
flySec:AddToggle("Fly", { Title = "Fly", Default = false, Callback = function(v)
    toggleFly(v)
    saveSettings()
end })
flySec:AddSlider("FlySpeed", { Title = "Fly Speed", Min=10, Max=200, Default=50, Rounding=0, Callback = function(v)
    _G.FlySpeed = v
    saveSettings()
end })
flySec:AddToggle("Noclip", { Title = "Noclip", Default = false, Callback = function(v)
    toggleNoclip(v)
    saveSettings()
end })
Tabs.Player:AddDivider()
local flingSec = Tabs.Player:AddCollapsibleSection("Fling", "lucide/rocket", true)
local flingDropdown = flingSec:AddDropdown("FlingTarget", { Title = "Target", Values = getPlayersNames(), Default = "" })
flingSec:AddButton({ Title = "Refresh Players", Callback = function()
    local names = getPlayersNames()
    flingDropdown:SetValues(names)
    flingDropdown:SetValue(nil)
    Notify("Refresh", "Player list updated", "Info", nil, 2)
end })
flingSec:AddButton({ Title = "Fling Selected (Enhanced)", Callback = function()
    local name = flingDropdown.Value
    if not name or name == "" then
        Notify("Error", "Select a player", "Error", nil, 2)
        return
    end
    local pl = Players:FindFirstChild(name)
    if not pl then return end
    if isWhitelisted(pl) then Notify("Error", "Player is whitelisted", "Error", nil, 2) return end
    FlingActive = true
    task.spawn(function()
        flingPlayer(pl)
        FlingActive = false
    end)
end })
flingSec:AddButton({ Title = "Stop Fling", Callback = function()
    FlingActive = false
end })
flingSec:AddToggle("ExtremeFlingToggle", {
    Title = "Touch fling",
    Default = false,
    Callback = function(v)
        _G.ExtremeFlingEnabled = v
        toggleExtremeFling(v)
        saveSettings()
    end
})
Tabs.Player:AddDivider()
local glitchSec = Tabs.Player:AddCollapsibleSection("Easy Glitching", "lucide/wand", true)
glitchSec:AddToggle("EasyGlitchToggle", { Title = "Easy Glitching", Default = false, Callback = function(v)
    _G.EasyGlitch = v
    easyGlitchSetup(v)
    saveSettings()
end })
local fakeSec = Tabs.Player:AddCollapsibleSection("Fake Die", "lucide/skull", true)
fakeSec:AddButton({ Title = "Lay On Back", Callback = layDown })
fakeSec:AddButton({ Title = "Sit Down", Callback = sitDown })
Tabs.Player:AddDivider()
local extraPlayerSec = Tabs.Player:AddCollapsibleSection("Extra", "lucide/plus", true)
extraPlayerSec:AddToggle("SpectateToggle", { Title = "Enable Spectate", Default = false, Callback = function(v)
    spectateEnabled = v
    if not v then
        Camera.CameraSubject = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        Notify("Spectate", "Spectate disabled", "Info", nil, 2)
    end
    saveSettings()
end })
spectateDropdown = extraPlayerSec:AddDropdown("SpectateTarget", {
    Title = "Spectate Player",
    Values = getPlayersNames(),
    Default = "",
    Multi = false,
    Callback = function(v)
        startSpectate(v)
    end
})
extraPlayerSec:AddButton({ Title = "Refresh Spectate List", Callback = function()
    updateSpectateList()
end })
extraPlayerSec:AddToggle("CTRL+Click Teleport (PC)", { Title = "Enable", Default = false, Callback = function(v)
    ctrlClickTP = v
    saveSettings()
end })
extraPlayerSec:AddButton({ Title = "Send Sheriff & Murderer names to chat", Callback = sendRoleNames })
Tabs.AutoFarm:AddSection("Coin Farm")
Tabs.AutoFarm:AddToggle("CoinFarmToggle", { Title = "Enable Coin Farm", Default = false, Callback = function(v)
    toggleCoinFarm(v)
    saveSettings()
end })
Tabs.AutoFarm:AddSlider("CoinFarmSpeed", { Title = "Farm Speed", Min=0.5, Max=3, Default=1, Rounding=1, Callback = function(v)
    _G.CoinFarmSpeed = v
    saveSettings()
end })
Tabs.AutoFarm:AddDropdown("CoinType", { Title = "Coin Type", Values = {"Coin", "BeachBall", "Coin and BeachBall"}, Default = "Coin and BeachBall", Callback = function(v)
    _G.CoinType = v
    saveSettings()
end })
Tabs.Whitelist:AddSection("Whitelist")
Tabs.Whitelist:AddToggle("WhitelistOn", { Title = "Enable", Default = false, Callback = function(v)
    _G.WhitelistEnabled = v
    saveSettings()
end })
Tabs.Whitelist:AddToggle("WhitelistFriends", { Title = "Friends", Default = false, Callback = function(v)
    _G.WhitelistFriends = v
    saveSettings()
end })
Tabs.Whitelist:AddDropdown("WhitelistPlayers", { Title = "Players", Values = getPlayersNames(), Default = {}, Multi = true, Callback = function(v)
    _G.WhitelistPlayers = v
    saveSettings()
end })
_G.SelectedAnimation = _G.SelectedAnimation or {}
local function setAnimationsAndSave(idle1, idle2, walk, run, jump, climb, fall, swimIdle, swim)
    _G.SelectedAnimation = {
        idle1 = idle1, idle2 = idle2, walk = walk, run = run, jump = jump,
        climb = climb, fall = fall, swimIdle = swimIdle, swim = swim
    }
    local char = LocalPlayer.Character
    if not char then return end
    local animate = char:FindFirstChild("Animate")
    if not animate then return end
    if animate:FindFirstChild("idle") then
        local idle = animate.idle
        if idle:FindFirstChild("Animation1") then idle.Animation1.AnimationId = idle1 end
        if idle:FindFirstChild("Animation2") then idle.Animation2.AnimationId = idle2 end
    end
    if animate:FindFirstChild("walk") and animate.walk:FindFirstChild("WalkAnim") then
        animate.walk.WalkAnim.AnimationId = walk
    end
    if animate:FindFirstChild("run") and animate.run:FindFirstChild("RunAnim") then
        animate.run.RunAnim.AnimationId = run
    end
    if animate:FindFirstChild("jump") and animate.jump:FindFirstChild("JumpAnim") then
        animate.jump.JumpAnim.AnimationId = jump
    end
    if animate:FindFirstChild("climb") and animate.climb:FindFirstChild("ClimbAnim") then
        animate.climb.ClimbAnim.AnimationId = climb
    end
    if animate:FindFirstChild("fall") and animate.fall:FindFirstChild("FallAnim") then
        animate.fall.FallAnim.AnimationId = fall
    end
    if animate:FindFirstChild("swimidle") and animate.swimidle:FindFirstChild("SwimIdle") then
        animate.swimidle.SwimIdle.AnimationId = swimIdle
    end
    if animate:FindFirstChild("swim") and animate.swim:FindFirstChild("Swim") then
        animate.swim.Swim.AnimationId = swim
    end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.Jump = true
        task.wait(0.05)
        hum.Jump = false
    end
end
local function applyStoredAnimation(character)
    local animate = character:FindFirstChild("Animate")
    if not animate then return end
    local data = _G.SelectedAnimation
    if not data or not data.idle1 then return end
    if animate:FindFirstChild("idle") then
        local idle = animate.idle
        if idle:FindFirstChild("Animation1") and data.idle1 then idle.Animation1.AnimationId = data.idle1 end
        if idle:FindFirstChild("Animation2") and data.idle2 then idle.Animation2.AnimationId = data.idle2 end
    end
    if animate:FindFirstChild("walk") and animate.walk:FindFirstChild("WalkAnim") and data.walk then
        animate.walk.WalkAnim.AnimationId = data.walk
    end
    if animate:FindFirstChild("run") and animate.run:FindFirstChild("RunAnim") and data.run then
        animate.run.RunAnim.AnimationId = data.run
    end
    if animate:FindFirstChild("jump") and animate.jump:FindFirstChild("JumpAnim") and data.jump then
        animate.jump.JumpAnim.AnimationId = data.jump
    end
    if animate:FindFirstChild("climb") and animate.climb:FindFirstChild("ClimbAnim") and data.climb then
        animate.climb.ClimbAnim.AnimationId = data.climb
    end
    if animate:FindFirstChild("fall") and animate.fall:FindFirstChild("FallAnim") and data.fall then
        animate.fall.FallAnim.AnimationId = data.fall
    end
    if animate:FindFirstChild("swimidle") and animate.swimidle:FindFirstChild("SwimIdle") and data.swimIdle then
        animate.swimidle.SwimIdle.AnimationId = data.swimIdle
    end
    if animate:FindFirstChild("swim") and animate.swim:FindFirstChild("Swim") and data.swim then
        animate.swim.Swim.AnimationId = data.swim
    end
    local hum = character:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.Jump = true
        task.wait(0.05)
        hum.Jump = false
    end
end
LocalPlayer.CharacterAdded:Connect(function(char)
    task.wait(0.5)
    applyStoredAnimation(char)
end)
if LocalPlayer.Character then
    task.wait(0.5)
    applyStoredAnimation(LocalPlayer.Character)
end
Tabs.Emotes:AddSection("Emotes (click to play)")
local function playEmote(name)
    if PlayEmoteEvent then
        pcall(function() PlayEmoteEvent:Fire(name) end)
    else
        Notify("Error", "Emote remote not found", "Error", nil, 2)
    end
end
Tabs.Emotes:AddButton({ Title = "Sit", Callback = function() playEmote("sit") end })
Tabs.Emotes:AddButton({ Title = "Zen", Callback = function() playEmote("zen") end })
Tabs.Emotes:AddButton({ Title = "Dab", Callback = function() playEmote("dab") end })
Tabs.Emotes:AddButton({ Title = "Floss", Callback = function() playEmote("floss") end })
Tabs.Emotes:AddButton({ Title = "Zombie", Callback = function() playEmote("zombie") end })
Tabs.Emotes:AddButton({ Title = "Headless", Callback = function() playEmote("headless") end })
Tabs.Emotes:AddDivider()
local normalSec = Tabs.Emotes:AddCollapsibleSection("Normal Animations", "lucide/activity", true)
local normalAnims = {
    { name = "Astronaut", idle1 = "891621366", idle2 = "891633237", walk = "891667138", run = "891636393", jump = "891627522", climb = "891609353", fall = "891617961" },
    { name = "Bubbly", idle1 = "910004836", idle2 = "910009958", walk = "910034870", run = "910025107", jump = "910016857", climb = "", fall = "910001910", swimIdle = "910030921", swim = "910028158" },
    { name = "Cartoony", idle1 = "742637544", idle2 = "742638445", walk = "742640026", run = "742638842", jump = "742637942", climb = "742636889", fall = "742637151" },
    { name = "Elder", idle1 = "845397899", idle2 = "845400520", walk = "845403856", run = "845386501", jump = "845398858", climb = "845392038", fall = "845396048" },
    { name = "Knight", idle1 = "657595757", idle2 = "657568135", walk = "657552124", run = "657564596", jump = "658409194", climb = "658360781", fall = "657600338" },
    { name = "Levitation", idle1 = "616006778", idle2 = "616008087", walk = "616013216", run = "616010382", jump = "616008936", climb = "616003713", fall = "616005863" },
    { name = "Mage", idle1 = "707742142", idle2 = "707855907", walk = "707897309", run = "707861613", jump = "707853694", climb = "707826056", fall = "707829716" },
    { name = "Ninja", idle1 = "656117400", idle2 = "656118341", walk = "656121766", run = "656118852", jump = "656117878", climb = "656114359", fall = "656115606" },
    { name = "Pirate", idle1 = "750781874", idle2 = "750782770", walk = "750785693", run = "750783738", jump = "750782230", climb = "750779899", fall = "750780242" },
    { name = "Robot", idle1 = "616088211", idle2 = "616089559", walk = "616095330", run = "616091570", jump = "616090535", climb = "616086039", fall = "616087089" },
    { name = "Stylish", idle1 = "616136790", idle2 = "616138447", walk = "616146177", run = "616140816", jump = "616139451", climb = "616133594", fall = "616134815" },
    { name = "SuperHero", idle1 = "616111295", idle2 = "616113536", walk = "616122287", run = "616117076", jump = "616115533", climb = "616104706", fall = "616108001" },
    { name = "Toy", idle1 = "782841498", idle2 = "782845736", walk = "782843345", run = "782842708", jump = "782847020", climb = "782843869", fall = "782846423" },
    { name = "Vampire", idle1 = "1083445855", idle2 = "1083450166", walk = "1083473930", run = "1083462077", jump = "1083455352", climb = "1083439238", fall = "1083443587" },
    { name = "Werewolf", idle1 = "1083195517", idle2 = "1083214717", walk = "1083178339", run = "1083216690", jump = "1083218792", climb = "1083182000", fall = "1083189019" },
    { name = "Zombie", idle1 = "616158929", idle2 = "616160636", walk = "616168032", run = "616163682", jump = "616161997", climb = "616156119", fall = "616157476" },
}
for _, anim in ipairs(normalAnims) do
    normalSec:AddButton({ Title = anim.name, Callback = function()
        setAnimationsAndSave(
            "http://www.roblox.com/asset/?id="..anim.idle1,
            "http://www.roblox.com/asset/?id="..(anim.idle2 or anim.idle1),
            "http://www.roblox.com/asset/?id="..(anim.walk or ""),
            "http://www.roblox.com/asset/?id="..(anim.run or ""),
            "http://www.roblox.com/asset/?id="..(anim.jump or ""),
            "http://www.roblox.com/asset/?id="..(anim.climb or ""),
            "http://www.roblox.com/asset/?id="..(anim.fall or ""),
            "http://www.roblox.com/asset/?id="..(anim.swimIdle or ""),
            "http://www.roblox.com/asset/?id="..(anim.swim or "")
        )
        Notify("Animation", "Changed to "..anim.name, "Success", nil, 2)
    end })
end
local specialSec = Tabs.Emotes:AddCollapsibleSection("Special Animations", "lucide/star", true)
local specialAnims = {
    { name = "Patrol", idle1 = "1149612882", idle2 = "1150842221", walk = "1151231493", run = "1150967949", jump = "1148811837", climb = "1148811837", fall = "1148863382" },
    { name = "Confident", idle1 = "1069977950", idle2 = "1069987858", walk = "1070017263", run = "1070001516", jump = "1069984524", climb = "1069946257", fall = "1069973677" },
    { name = "Popstar", idle1 = "1212900985", idle2 = "1150842221", walk = "1212980338", run = "1212980348", jump = "1212954642", climb = "1213044953", fall = "1212900995" },
    { name = "Cowboy", idle1 = "1014390418", idle2 = "1014398616", walk = "1014421541", run = "1014401683", jump = "1014394726", climb = "1014380606", fall = "1014384571" },
    { name = "Ghost", idle1 = "616006778", idle2 = "616008087", walk = "616013216", run = "616013216", jump = "616008936", climb = "", fall = "616005863", swimIdle = "616012453", swim = "616011509" },
    { name = "Sneaky", idle1 = "1132473842", idle2 = "1132477671", walk = "1132510133", run = "1132494274", jump = "1132489853", climb = "1132461372", fall = "1132469004" },
    { name = "Princess", idle1 = "941003647", idle2 = "941013098", walk = "941028902", run = "941015281", jump = "941008832", climb = "940996062", fall = "941000007" },
}
for _, anim in ipairs(specialAnims) do
    specialSec:AddButton({ Title = anim.name, Callback = function()
        setAnimationsAndSave(
            "http://www.roblox.com/asset/?id="..anim.idle1,
            "http://www.roblox.com/asset/?id="..(anim.idle2 or anim.idle1),
            "http://www.roblox.com/asset/?id="..(anim.walk or ""),
            "http://www.roblox.com/asset/?id="..(anim.run or ""),
            "http://www.roblox.com/asset/?id="..(anim.jump or ""),
            "http://www.roblox.com/asset/?id="..(anim.climb or ""),
            "http://www.roblox.com/asset/?id="..(anim.fall or ""),
            "http://www.roblox.com/asset/?id="..(anim.swimIdle or ""),
            "http://www.roblox.com/asset/?id="..(anim.swim or "")
        )
        Notify("Animation", "Changed to "..anim.name, "Success", nil, 2)
    end })
end
local otherSec = Tabs.Emotes:AddCollapsibleSection("Other", "lucide/more-horizontal", true)
otherSec:AddButton({ Title = "None (Clear)", Callback = function()
    setAnimationsAndSave("", "", "", "", "", "", "", "", "")
    Notify("Animation", "Cleared all animations", "Info", nil, 2)
end })
otherSec:AddButton({ Title = "Anthro (Default)", Callback = function()
    setAnimationsAndSave(
        "http://www.roblox.com/asset/?id=2510196951",
        "http://www.roblox.com/asset/?id=2510197257",
        "http://www.roblox.com/asset/?id=2510202577",
        "http://www.roblox.com/asset/?id=2510198475",
        "http://www.roblox.com/asset/?id=2510197830",
        "http://www.roblox.com/asset/?id=2510192778",
        "http://www.roblox.com/asset/?id=2510195892",
        "",
        ""
    )
    Notify("Animation", "Set to Anthro default", "Success", nil, 2)
end})
Tabs.Teleport:AddSection("Teleports")
Tabs.Teleport:AddButton({ Title = "Teleport to Map Spawn", Callback = teleportToSpawn })
Tabs.Teleport:AddButton({ Title = "Teleport to Murderer", Callback = function()
    local murd = getTargetByRole("Murderer")
    if murd and murd.Character and murd.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = murd.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
    end
end })
Tabs.Teleport:AddButton({ Title = "Teleport to Sheriff", Callback = function()
    local sher = getTargetByRole("Sheriff")
    if sher and sher.Character and sher.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = sher.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
    end
end })
local grabSec = Tabs.Misc:AddCollapsibleSection("Auto Grab Gun", "lucide/hand", true)
grabSec:AddToggle("AutoGrab", { Title = "Auto Grab Gun", Default = false, Callback = function(v)
    _G.AutoGrabEnabled = v
    saveSettings()
end })
grabSec:AddKeybind("GrabKey", { Title = "Manual Grab", Default = "G", Callback = grabGun })
Tabs.Misc:AddDivider()
local prankSec = Tabs.Misc:AddCollapsibleSection("Prank Bomb Jump Helper", "lucide/party-popper", true)
prankSec:AddToggle("PrankBombToggle", { Title = "Enable", Default = false, Callback = onPrankBombToggle })
prankSec:AddKeybind("PrankBombKeybind", { Title = "Placement Key", Default = "B", Callback = function(key)
    _G.PrankBombKey = key
    togglePrankBombKeybind(key)
    saveSettings()
end })
Tabs.Misc:AddDivider()
local notifSec = Tabs.Misc:AddCollapsibleSection("Notifications", "lucide/bell", true)
notifSec:AddToggle("SayRole", { Title = "Show role on round start", Default = false, Callback = function(v)
    _G.SayRoleEnabled = v
    saveSettings()
end })
notifSec:AddToggle("RoundTimer", { Title = "Round Timer (MM2)", Default = false, Callback = function(v)
    toggleRoundTimer(v)
    saveSettings()
end })
Tabs.Misc:AddDivider()
local afkSec = Tabs.Misc:AddCollapsibleSection("Anti-AFK", "lucide/clock", true)
afkSec:AddToggle("AntiAfk", { Title = "Anti AFK", Default = true, Callback = function(v)
    _G.AntiAfkEnabled = v
    toggleAntiAfk(v)
    saveSettings()
end })
Tabs.Misc:AddDivider()
local utilsSec = Tabs.Misc:AddCollapsibleSection("Utilities", "lucide/tool", true)
utilsSec:AddButton({ Title = "Rejoin", Callback = rejoin })
utilsSec:AddButton({ Title = "Respawn", Callback = respawn })
local rtxSec = Tabs.Atmosphere:AddCollapsibleSection("RTX Shaders", "lucide/sparkles", true)
local rtxToggle = rtxSec:AddToggle("RTXShaders", { Title = "RTX Shaders", Default = false })
rtxToggle:OnChanged(function(v)
    _G.RTXShaders = v
    if v then
        pcall(function()
            local bloom = Instance.new("BloomEffect", Lighting)
            bloom.Name = "RTX_Bloom"
            bloom.Intensity = 0.1
            bloom.Size = 100
            local cc = Instance.new("ColorCorrectionEffect", Lighting)
            cc.Name = "RTX_CC"
            cc.Saturation = 0.05
            cc.TintColor = Color3.fromRGB(255, 224, 219)
            local sun = Instance.new("SunRaysEffect", Lighting)
            sun.Name = "RTX_SunRays"
            sun.Intensity = 0.05
            Lighting.Brightness = 2.14
            Lighting.ColorShift_Bottom = Color3.fromRGB(11,0,20)
            Lighting.ColorShift_Top = Color3.fromRGB(240,127,14)
            Lighting.OutdoorAmbient = Color3.fromRGB(34,0,49)
            Lighting.ClockTime = 6.7
        end)
        Notify("RTX Shaders", "Enabled", "Success", nil, 3)
    else
        for _, child in ipairs(Lighting:GetChildren()) do
            if child.Name:find("RTX") then
                child:Destroy()
            end
        end
        Lighting.Brightness = 2
        Lighting.ColorShift_Bottom = Color3.new(0,0,0)
        Lighting.ColorShift_Top = Color3.new(0,0,0)
        Lighting.OutdoorAmbient = Color3.fromRGB(157,157,157)
        Lighting.ClockTime = 14
        Notify("RTX Shaders", "Disabled", "Info", nil, 2)
    end
end)
Tabs.Atmosphere:AddDivider()
local envSec = Tabs.Atmosphere:AddCollapsibleSection("Environment Controls", "lucide/sun", true)
local originalClockTime = Lighting.ClockTime
local originalFogStart = Lighting.FogStart
local originalFogEnd = Lighting.FogEnd
local originalFogColor = Lighting.FogColor
local fogEnabled = false
local fogDensity = 50
local fogColor = Color3.fromRGB(255,255,255)
local function applyFog()
    if fogEnabled then
        Lighting.FogStart = 0
        Lighting.FogEnd = 1000 - (fogDensity * 10)  
        Lighting.FogColor = fogColor
    else
        Lighting.FogStart = originalFogStart
        Lighting.FogEnd = originalFogEnd
        Lighting.FogColor = originalFogColor
    end
end
envSec:AddSlider("TimeOfDaySlider", {
    Title = "Time of Day",
    Min = 0,
    Max = 24,
    Default = Lighting.ClockTime,
    Rounding = 0.5,
    Callback = function(v)
        Lighting.ClockTime = v
    end
})
envSec:AddToggle("FogToggle", {
    Title = "Enable Fog",
    Default = false,
    Callback = function(v)
        fogEnabled = v
        applyFog()
        Notify("Fog", fogEnabled and "Enabled" or "Disabled", "Info", nil, 2)
    end
})
envSec:AddSlider("FogDensitySlider", {
    Title = "Fog Density",
    Min = 0,
    Max = 100,
    Default = 50,
    Rounding = 0,
    Callback = function(v)
        fogDensity = v
        if fogEnabled then
            applyFog()
            Notify("Fog", "Density: " .. v, "Info", nil, 1)
        end
    end
})
envSec:AddDropdown("FogColorDropdown", {
    Title = "Fog Color",
    Values = {"White","Gray","Black","Blue","Red","Green","Purple","Orange"},
    Multi = false,
    Default = "White",
    Callback = function(v)
        local colorMap = {
            White  = Color3.fromRGB(255,255,255),
            Gray   = Color3.fromRGB(128,128,128),
            Black  = Color3.fromRGB(0,0,0),
            Blue   = Color3.fromRGB(100,150,255),
            Red    = Color3.fromRGB(255,80,80),
            Green  = Color3.fromRGB(80,255,80),
            Purple = Color3.fromRGB(200,100,255),
            Orange = Color3.fromRGB(255,180,50)
        }
        fogColor = colorMap[v] or Color3.fromRGB(255,255,255)
        if fogEnabled then
            applyFog()
            Notify("Fog", "Color: " .. v, "Info", nil, 1)
        end
    end
})
envSec:AddButton({
    Title = "Reset Environment",
    Callback = function()
        Lighting.ClockTime = originalClockTime
        Lighting.FogStart = originalFogStart
        Lighting.FogEnd = originalFogEnd
        Lighting.FogColor = originalFogColor
        fogEnabled = false
        fogDensity = 50
        fogColor = Color3.fromRGB(255,255,255)
        pcall(function()
            Options.TimeOfDaySlider:SetValue(originalClockTime)
            Options.FogToggle:SetValue(false)
            Options.FogDensitySlider:SetValue(50)
            Options.FogColorDropdown:SetValue("White")
        end)
        Notify("Environment", "Reset to defaults", "Info", nil, 2)
    end
})
Tabs.Settings:AddSection("Theme")
Tabs.Settings:AddDropdown("ThemeSelect", { Title = "UI Theme", Values = themes, Default = defaultTheme, Callback = function(v)
    _G.Theme = v
    pcall(function() Fluent:SetTheme(v) end)
    saveSettings()
end })
if _G.ExtremeFlingEnabled then
    pcall(function()
        Options.ExtremeFlingToggle:SetValue(true)
        toggleExtremeFling(true)
    end)
end
Tabs.Settings:AddDivider()
local backgroundIDs = {
    ["Blue (Ryo)"] = "rbxassetid://110300998910160",
    ["Red (Kita)"] = "rbxassetid://125644682328750",
    ["Pink (Bocchi)"] = "rbxassetid://100823211487117",
    ["Yellow (Nijika)"] = "rbxassetid://90908656139712",
    ["Crimson"] = "rbxassetid://132324914333495",
    ["Gold"] = "rbxassetid://107795771598485",
    ["AMOLED"] = "rbxassetid://134736124666311",
}
local bgNames = {}
for k in pairs(backgroundIDs) do table.insert(bgNames, k) end
table.sort(bgNames)
Tabs.Settings:AddDropdown("BackgroundSelect", {
    Title = "Background Image",
    Values = bgNames,
    Default = backgroundIDs[defaultTheme] and defaultTheme or bgNames[1],
    Callback = function(v)
        local id = backgroundIDs[v]
        if id then
            pcall(function()
                local acrylic = Window.AcrylicPaint
                if acrylic and acrylic.Frame then
                    local bg = acrylic.Frame:FindFirstChild("__ThemeBG")
                    if bg then
                        bg.Image = id
                    else
                        bg = Instance.new("ImageLabel")
                        bg.Name = "__ThemeBG"
                        bg.Size = UDim2.fromScale(1,1)
                        bg.BackgroundTransparency = 1
                        bg.ScaleType = Enum.ScaleType.Crop
                        bg.ZIndex = 0
                        bg.Image = id
                        local bgCorner = Instance.new("UICorner")
                        bgCorner.CornerRadius = WINDOW_CORNER
                        bgCorner.Parent = bg
                        bg.Parent = acrylic.Frame
                    end
                end
            end)
        end
    end
})
Tabs.Settings:AddSection("Config")
Tabs.Settings:AddButton({ Title = "Save Settings", Callback = function()
    saveSettings()
    Notify("Saved", "", "Success", nil, 2)
end })
Tabs.Settings:AddButton({ Title = "Load Settings", Callback = function()
    if loadSettings() then
        Notify("Loaded", "", "Success", nil, 2)
    else
        Notify("No save file", "", "Error", nil, 2)
    end
end })
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.Space then spaceHeld = true end
    if _G.FastThrowEnabled and input.KeyCode == Enum.KeyCode[_G.FastThrowKey] then
        throwKnife()
    end
    if _G.KnifeSilentAimEnabled and input.KeyCode == Enum.KeyCode[_G.KnifeSilentAimKey] then
        knifeSilentAim()
    end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then spaceHeld = false end
end)
RunService.PostSimulation:Connect(function()
    if not spaceHeld then return end
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum then return end
    if hum:GetState() == Enum.HumanoidStateType.Freefall and (os.clock() - lastJumpTime) > 0.15 then
    end
end)
LocalPlayer.CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid")
    task.wait(0.5)
    updateMovement()
    hum.Died:Connect(function()
        isDead = true
    end)
end)
LocalPlayer.CharacterRemoving:Connect(clearESP)
if FadeEvent then
    FadeEvent.OnClientEvent:Connect(function(data)
        if type(data) == "table" then
            currentRoles = {}
            savedPlayerData = data
            local myRole = "Unknown"
            for name, d in pairs(data) do
                if type(d) == "table" and d.Role then
                    currentRoles[name] = d.Role
                    if name == LocalPlayer.Name then myRole = d.Role end
                end
            end
            inRound = true
            isDead = false
            if _G.SayRoleEnabled then
                Notify("Round Started", "Your role: "..myRole, "Info", nil, 5)
            end
        end
    end)
end
if RoundEndFadeEvent then
    RoundEndFadeEvent.OnClientEvent:Connect(function()
        clearESP()
        table.clear(gunDropCache)
        inRound = false
        isDead = false
    end)
end
local function regGun(obj)
    if obj.Name == "GunDrop" then
        gunDropCache[obj] = true
    end
end
for _,v in pairs(workspace:GetDescendants()) do
    regGun(v)
end
workspace.DescendantAdded:Connect(regGun)
workspace.DescendantRemoving:Connect(function(obj)
    if gunDropCache[obj] then
        gunDropCache[obj] = nil
    end
end)
task.spawn(function()
    while true do
        pcall(function()
            scanRoles()
            updateMovement()
            if _G.EspEnabled then
                for _, pl in ipairs(Players:GetPlayers()) do
                    updateESP(pl)
                end
            end
            local mr = getMyRole()
            for gd,_ in pairs(gunDropCache) do
                if gd and gd.Parent then
                    if _G.AutoGrabEnabled and mr ~= "Murderer" and mr ~= "Sheriff" then
                        local char = LocalPlayer.Character
                        local root = char and char:FindFirstChild("HumanoidRootPart")
                        if root then
                            gd:PivotTo(root.CFrame)
                            local ti = gd:FindFirstChild("TouchInterest", true) or gd:FindFirstChildWhichIsA("TouchTransmitter", true)
                            if ti then
                                firetouchinterest(root, gd, 0)
                                task.wait()
                                firetouchinterest(root, gd, 1)
                            end
                        end
                    end
                    if _G.GunEspEnabled then
                        local hl = gd:FindFirstChild("GunDropHighlight") or Instance.new("Highlight", gd)
                        hl.Name = "GunDropHighlight"
                        hl.FillColor = _G.GunFill
                        hl.FillTransparency = _G.GunFillTrans
                        hl.OutlineColor = _G.GunOutline
                        hl.OutlineTransparency = 1
                    else
                        local hl = gd:FindFirstChild("GunDropHighlight")
                        if hl then hl:Destroy() end
                    end
                end
            end
        end)
        task.wait(0.1)
    end
end)
loadSettings()
toggleAntiAfk(_G.AntiAfkEnabled)
togglePrankBombKeybind(_G.PrankBombKey)
Window:SelectTab(1)
task.delay(1, function()
    Notify("Hello, " .. LocalPlayer.Name, "Added touch fling", "Success", "home", 6)
end)
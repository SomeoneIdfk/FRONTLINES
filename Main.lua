repeat wait() until game:IsLoaded()

local filesys, syn, environment = {
    listfiles = listfiles or listdir or syn_io_listdir or nil,
    isfolder = isfolder or nil,
    isfile = isfile or nil,
    makefolder = makefolder or nil,
    writefile = writefile or nil,
	readfile = readfile or nil
}, {
    getrawmetatable = getrawmetatable or nil,
    getsenv = getsenv or nil,
	getrenv = getrenv or nil,
    hookfunc = hookfunc or hookfunction or replaceclosure or nil,
	hookmetamethod = hookmetamethod or nil,
    sethiddenproperty = sethiddenproperty or nil,
	getconnections = getconnections or nil,
	mousemoverel = mousemoverel or nil,
	getnamecallmethod = getnamecallmethod or nil,
	getcallingscript = getcallingscript or nil,
	newcclosure = newcclosure or nil,
	checkcaller = checkcaller or nil,
	setreadonly = setreadonly or nil,
	make_writeable = make_writeable or nil
}, {
    Workspace = game:GetService("Workspace"),
    UserInputService = game:GetService("UserInputService"),
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    HttpService = game:GetService("HttpService"),
    RunService = game:GetService("RunService"),
    Players = game:GetService('Players'),
    TeleportService = game:GetService("TeleportService"),
    LocalPlayer = game:GetService('Players').LocalPlayer,
	Mouse = game:GetService("Players").LocalPlayer:GetMouse(),
	CurrentCamera = game:GetService("Workspace").CurrentCamera,
	ContentProvider = game:GetService('ContentProvider'),
	Chat = game:GetService("Chat")
}

local ui_source = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local ui = ui_source:CreateWindow({
    Name = "FRONTLINES GUI",
    LoadingTitle = "FRONTLINES",
    LoadingSubtitle = "By SomeoneIdfk",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "FRONTLINES",
       FileName = "Profile"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "",
        Subtitle = "",
        Note = "",
        FileName = "",
        SaveKey = false,
        GrabKeyFromSite = false,
        Key = ""
     }
})

local esp = loadstring(--[[filesys.readfile("esp.lua")]] game:HttpGet('https://raw.githubusercontent.com/SomeoneIdfk/FRONTLINES/main/Esp.lua'))()

esp.teamSettings = {
    enemy = {
        enabled = false,
        box = false,
        boxColor = {Color3.new(1, 0, 0), 0},
        boxOutline = false,
        boxOutlineColor = {Color3.new(1, 0, 0), 0},
        boxFill = false,
        boxFillColor = {Color3.new(1, 0, 0), 0},
        healthBar = false,
        healthyColor = Color3.new(0, 1, 0),
        dyingColor = Color3.new(1, 0, 0),
        healthBarOutline = false,
        healthBarOutlineColor = {Color3.new(1, 0, 0), 0},
        healthText = false,
        healthTextColor = {Color3.new(1, 0, 0), 0},
        healthTextOutline = false,
        healthTextOutlineColor = Color3.new(1, 0, 0),
        box3d = false,
        box3dColor = {Color3.new(1, 0, 0), 0},
        name = false,
        nameColor = {Color3.new(1, 0, 0), 0},
        nameOutline = false,
        nameOutlineColor = Color3.new(1, 0, 0),
        weapon = false,
        weaponColor = {Color3.new(1, 0, 0), 0},
        weaponOutline = false,
        weaponOutlineColor = Color3.new(1, 0, 0),
        distance = false,
        distanceColor = {Color3.new(1, 0, 0), 1},
        distanceOutline = false,
        distanceOutlineColor = Color3.new(1, 0, 0),
        tracer = false,
        tracerOrigin = "Bottom",
        tracerColor = {Color3.new(1, 0, 0), 1},
        tracerOutline = false,
        tracerOutlineColor = {Color3.new(1, 0, 0), 0},
        offScreenArrow = false,
        offScreenArrowColor = {Color3.new(1, 0, 0), 0},
        offScreenArrowSize = 15,
        offScreenArrowRadius = 150,
        offScreenArrowOutline = false,
        offScreenArrowOutlineColor = {Color3.new(1, 0, 0), 0},
        chams = false,
        chamsVisibleOnly = false,
        chamsFillColor = {Color3.new(1, 0, 0), 0.5},
        chamsOutlineColor = {Color3.new(1, 0, 0), 1},
    },
    friendly = {
        enabled = false,
        box = false,
        boxColor = {Color3.new(0, 1, 0), 0},
        boxOutline = false,
        boxOutlineColor = {Color3.new(0, 1, 0), 0},
        boxFill = false,
        boxFillColor = {Color3.new(0, 1, 0), 0},
        healthBar = false,
        healthyColor = Color3.new(0, 1, 0),
        dyingColor = Color3.new(1, 0, 0),
        healthBarOutline = false,
        healthBarOutlineColor = {Color3.new(0, 1, 0), 0},
        healthText = false,
        healthTextColor = {Color3.new(0, 1, 0), 0},
        healthTextOutline = false,
        healthTextOutlineColor = Color3.new(0, 1, 0),
        box3d = false,
        box3dColor = {Color3.new(0, 1, 0), 0},
        name = false,
        nameColor = {Color3.new(0, 1, 0), 0},
        nameOutline = false,
        nameOutlineColor = Color3.new(0, 1, 0),
        weapon = false,
        weaponColor = {Color3.new(0, 1, 0), 0},
        weaponOutline = false,
        weaponOutlineColor = Color3.new(0, 1, 0),
        distance = false,
        distanceColor = {Color3.new(0, 1, 0), 1},
        distanceOutline = false,
        distanceOutlineColor = Color3.new(0, 1, 0),
        tracer = false,
        tracerOrigin = "Bottom",
        tracerColor = {Color3.new(0, 1, 0), 1},
        tracerOutline = false,
        tracerOutlineColor = {Color3.new(0, 1, 0), 0},
        offScreenArrow = false,
        offScreenArrowColor = {Color3.new(0, 1, 0), 0},
        offScreenArrowSize = 15,
        offScreenArrowRadius = 150,
        offScreenArrowOutline = false,
        offScreenArrowOutlineColor = {Color3.new(0, 1, 0), 0},
        chams = false,
        chamsVisibleOnly = false,
        chamsFillColor = {Color3.new(0, 1, 0), 0.5},
        chamsOutlineColor = {Color3.new(0, 1, 0), 1}
    }
}

local FOV, Line = Drawing.new("Circle"), Drawing.new("Line")
FOV.Color, FOV.Thickness, FOV.Radius, FOV.Transparency, FOV.Visible, Line.Color, Line.Thickness, Line.Visible = Color3.new(0, 0, 0), 2, 120, 0.5, false, Color3.new(1, 0, 0), 2, false

local soft = {state = false, speeds = {horizontal = 25, vertical = 25}, visible = true, part = "Head", fov_color = Color3.new(0, 0, 0)}
local wallhacks = {chams = {team = false, enemy = false}}

local Aimbot = ui:CreateTab("Aimbot", 4483345998)
local AimbotSoft = Aimbot:CreateSection("Soft")
Aimbot:CreateToggle({
    Name = "Enable",
    CurrentValue = soft.state,
    Flag = "aimbot_soft_toggle",
    Callback = function(state)
        soft.state = state
    end
})
Aimbot:CreateDropdown({
    Name = "Part",
    Options = {"Head", "Torso"},
    CurrentOption = soft.part,
    Flag = "aimbot_soft_part",
    Callback = function(state)
        soft.part = state
    end
 })
Aimbot:CreateSlider({
    Name = "Horizontal Speed",
    Range = {1, 50},
    Increment = 1,
    Suffix = "",
    CurrentValue = soft.speeds.horizontal,
    Flag = "aimbot_soft_hspeed",
    Callback = function(state)
        soft.speeds.horizontal = state
    end
})
Aimbot:CreateSlider({
    Name = "Vertical Speed",
    Range = {1, 50},
    Increment = 1,
    Suffix = "",
    CurrentValue = soft.speeds.vertical,
    Flag = "aimbot_soft_vspeed",
    Callback = function(state)
        soft.speeds.vertical = state
    end
})
Aimbot:CreateToggle({
    Name = "Visible",
    CurrentValue = soft.visible,
    Flag = "aimbot_soft_visible",
    Callback = function(state)
        soft.visible = state
    end
})
local AimbotFOV = Aimbot:CreateSection("FOV")
Aimbot:CreateToggle({
    Name = "Enable",
    CurrentValue = FOV.Visible,
    Flag = "aimbot_fov_toggle",
    Callback = function(state)
        FOV.Visible = state
    end
})
Aimbot:CreateSlider({
    Name = "Radius",
    Range = {0, 360},
    Increment = 5,
    Suffix = "",
    CurrentValue = FOV.Radius,
    Flag = "aimbot_fov_radius",
    Callback = function(state)
        FOV.Radius = state
    end
})
Aimbot:CreateColorPicker({
    Name = "Color",
    Color = FOV.Color,
    Flag = "aimbot_fov_color",
    Callback = function(state)
        FOV.Color = state
        soft.fov_color = state
    end
})
Aimbot:CreateSlider({
    Name = "Transparency",
    Range = {20, 100},
    Increment = 5,
    Suffix = "",
    CurrentValue = 50,
    Flag = "aimbot_fov_transparency",
    Callback = function(state)
        FOV.Transparency = (state / 100)
    end
})
local Wallhacks = ui:CreateTab("Wallhacks", 4483362458)
local WallhacksTeam = Wallhacks:CreateSection("Team")
Wallhacks:CreateToggle({
    Name = "Enable",
    CurrentValue = esp.teamSettings.friendly.enabled,
    Flag = "wallhacks_team_toggle",
    Callback = function(state)
        esp.teamSettings.friendly.enabled = state
        if wallhacks.chams.team then
            esp.teamSettings.friendly.chams = state
        end
    end
})
Wallhacks:CreateToggle({
    Name = "Chams",
    CurrentValue = esp.teamSettings.friendly.chams,
    Flag = "wallhacks_team_chams",
    Callback = function(state)
        wallhacks.chams.team = state
        if esp.teamSettings.friendly.enabled then
            esp.teamSettings.friendly.chams = state
        end
    end
})
Wallhacks:CreateToggle({
    Name = "Tracer",
    CurrentValue = esp.teamSettings.friendly.tracer,
    Flag = "wallhacks_team_tracer",
    Callback = function(state)
        esp.teamSettings.friendly.tracer = state
    end
})
Wallhacks:CreateToggle({
    Name = "Distance",
    CurrentValue = esp.teamSettings.friendly.distance,
    Flag = "wallhacks_team_distance",
    Callback = function(state)
        esp.teamSettings.friendly.distance = state
    end
})
Wallhacks:CreateColorPicker({
    Name = "Color",
    Color = esp.teamSettings.friendly.chamsOutlineColor[1],
    Flag = "wallhacks_team_color",
    Callback = function(state)
        esp.teamSettings.friendly.chamsOutlineColor[1] = state
        esp.teamSettings.friendly.tracerColor[1] = state
        esp.teamSettings.friendly.distanceColor[1] = state
    end
})
Wallhacks:CreateColorPicker({
    Name = "Filled Chams Color",
    Color = esp.teamSettings.friendly.chamsFillColor[1],
    Flag = "wallhacks_team_fchams_color",
    Callback = function(state)
        esp.teamSettings.friendly.chamsFillColor[1] = state
    end
})
Wallhacks:CreateSlider({
    Name = "Transparency",
    Range = {0, 100},
    Increment = 5,
    Suffix = "%",
    CurrentValue = (esp.teamSettings.friendly.chamsOutlineColor[2] * 100),
    Flag = "wallhacks_team_transparency",
    Callback = function(state)
        esp.teamSettings.friendly.chamsOutlineColor[2] = 1 - (1 * (state / 100))
        esp.teamSettings.friendly.chamsFillColor[2] = 0.5 - (0.5 * (state / 100))
        esp.teamSettings.friendly.tracerColor[2] = 1 - (1 * (state / 100))
        esp.teamSettings.friendly.distanceColor[2] = 1 - (1 * (state / 100))
    end
})
local WallhacksTeam = Wallhacks:CreateSection("Enemy")
Wallhacks:CreateToggle({
    Name = "Enable",
    CurrentValue = esp.teamSettings.enemy.enabled,
    Flag = "wallhacks_enemy_toggle",
    Callback = function(state)
        esp.teamSettings.enemy.enabled = state
        if wallhacks.chams.enemy then
            esp.teamSettings.enemy.chams = state
        end
    end
})
Wallhacks:CreateToggle({
    Name = "Chams",
    CurrentValue = esp.teamSettings.enemy.chams,
    Flag = "wallhacks_enemy_chams",
    Callback = function(state)
        wallhacks.chams.enemy = state
        if esp.teamSettings.enemy.enabled then
            esp.teamSettings.enemy.chams = state
        end
    end
})
Wallhacks:CreateToggle({
    Name = "Tracer",
    CurrentValue = esp.teamSettings.enemy.tracer,
    Flag = "wallhacks_enemy_tracer",
    Callback = function(state)
        esp.teamSettings.enemy.tracer = state
    end
})
Wallhacks:CreateToggle({
    Name = "Distance",
    CurrentValue = esp.teamSettings.enemy.distance,
    Flag = "wallhacks_enemy_distance",
    Callback = function(state)
        esp.teamSettings.enemy.distance = state
    end
})
Wallhacks:CreateColorPicker({
    Name = "Color",
    Color = esp.teamSettings.enemy.chamsOutlineColor[1],
    Flag = "wallhacks_enemy_color",
    Callback = function(state)
        esp.teamSettings.enemy.chamsOutlineColor[1] = state
        esp.teamSettings.enemy.tracerColor[1] = state
        esp.teamSettings.enemy.distanceColor[1] = state
    end
})
Wallhacks:CreateColorPicker({
    Name = "Filled Chams Color",
    Color = esp.teamSettings.enemy.chamsFillColor[1],
    Flag = "wallhacks_enemy_fchams_color",
    Callback = function(state)
        esp.teamSettings.enemy.chamsFillColor[1] = state
    end
})
Wallhacks:CreateSlider({
    Name = "Transparency",
    Range = {0, 100},
    Increment = 5,
    Suffix = "%",
    CurrentValue = (esp.teamSettings.enemy.chamsOutlineColor[2] * 100),
    Flag = "wallhacks_enemy_transparency",
    Callback = function(state)
        esp.teamSettings.enemy.chamsOutlineColor[2] = 1 - (1 * (state / 100))
        esp.teamSettings.enemy.chamsFillColor[2] = 0.5 - (0.5 * (state / 100))
        esp.teamSettings.enemy.tracerColor[2] = 1 - (1 * (state / 100))
        esp.teamSettings.enemy.distanceColor[2] = 1 - (1 * (state / 100))
    end
})

local ESPDistance, ESPMaxSize = 500, 10

local PlayerCFrames, OldDrawings = {}, {}

environment.RunService.RenderStepped:Connect(function()
    local OldPlayerCFrames, Players, Ignore, Closest = PlayerCFrames, {}, {environment.CurrentCamera}, {Distance = math.huge, Parts = nil}
    PlayerCFrames = {}
    for _ = 1, #OldDrawings do
        OldDrawings[_] = OldDrawings[_]:Remove() or nil
    end
    for _ = 1, #environment.Workspace:GetChildren() do
        if environment.Workspace:GetChildren()[_].Name == "soldier_model" then
            Players[#Players+1] = environment.Workspace:GetChildren()[_]
        elseif environment.Workspace:GetChildren()[_].Name == "Model" then
            Ignore[#Ignore+1] = environment.Workspace:GetChildren()[_]
        end
    end
    for _ = 1, #Players do
        local CFramePosition, Friendly, Alive = {T = Players[_].TPVBodyVanillaTorsoFront.CFrame.p - Vector3.new(0, 5, 0), H = Players[_].TPVBodyVanillaHead.CFrame.p - Vector3.new(0, 5, 0)}, Players[_]:FindFirstChild("friendly_marker"), false
        for i = 1, #OldPlayerCFrames do
            if (OldPlayerCFrames[i].Position - CFramePosition.T).Magnitude <= 2.5 then
                Alive = true
                break
            end
        end
        if Alive and (environment.CurrentCamera.CFrame.p - CFramePosition.H).magnitude >= 2.5 then
            local Position, OnScreen = environment.CurrentCamera:WorldToViewportPoint(CFramePosition.H)
            if not Friendly and (OnScreen and Position.Z >= 3 and Position.Z <= ESPDistance) then
                local ESP = Drawing.new("Square")
                ESP.Color = Color3.new(1, 0, 0)
                ESP.Size = Vector2.new(math.floor(ESPMaxSize - (Position.Z / ESPDistance)), math.floor(ESPMaxSize - (Position.Z / ESPDistance)))
                ESP.Thickness = 2
                ESP.Position = Vector2.new(Position.X, Position.Y)
                ESP.Transparency = 0.5
                ESP.Visible = true
                OldDrawings[#OldDrawings+1] = ESP
            end
            if not Friendly and OnScreen then
                local Distance = (Vector2.new(environment.Mouse.X, environment.Mouse.Y) - Vector2.new(Position.X, Position.Y)).magnitude
                if Distance < FOV.Radius and (not FOV.Visible or Distance < Closest.Distance) then
                    if soft.visible then
                        local Ignore2 = Ignore
                        if environment.Workspace:FindFirstChild("workspace") and environment.Workspace.workspace:FindFirstChild("boundary") then
                            Ignore2[#Ignore2+1] = environment.Workspace.workspace.boundary
                        end
                        for i = 1, #Players do
                            if Players[i] == Players[_] then
                                for i2 = 1, #Players[i]:GetChildren() do
                                    if Players[i]:GetChildren()[i2].Name ~= "HumanoidRootPart" then
                                        Ignore2[#Ignore2+1] = Players[i]:GetChildren()[i2]
                                    end
                                end
                            else
                                Ignore2[#Ignore2+1] = Players[i]
                            end
                        end
                        local Parts = environment.CurrentCamera.GetPartsObscuringTarget(environment.CurrentCamera, {CFramePosition.T, Players[_].HumanoidRootPart}, Ignore2)
                        if #Parts <= 3 then
                            Closest = {Distance = Distance, Parts = {[1] = soft.part == "Head" and CFramePosition.H or soft.part == "Torso" and CFramePosition.T, [2] = Position}}
                        end
                    else
                        Closest = {Distance = Distance, Parts = {[1] = soft.part == "Head" and CFramePosition.H or soft.part == "Torso" and CFramePosition.T, [2] = Position}}
                    end
                end
            end
        end
    end
    if Closest.Parts and soft.state then
        Line.To, Line.Visible = Vector2.new(Closest.Parts[2].X, Closest.Parts[2].Y), true
        FOV.Color = Color3.new(1, 0, 0)
        local Vector = environment.CurrentCamera:WorldToScreenPoint(Closest.Parts[1])
        local Magnitude = Vector2.new(Vector.X - environment.Mouse.X, Vector.Y - environment.Mouse.Y)
        syn.mousemoverel(Magnitude.X / (51 - soft.speeds.horizontal), Magnitude.Y / (51 - soft.speeds.vertical))
    else
        FOV.Color = soft.fov_color
        Line.Visible = false
    end
end)

environment.Mouse.Move:Connect(function()
    local Position = environment.UserInputService:GetMouseLocation()
    FOV.Position, Line.From = Position, Position
end)

local CFN
CFN = hookfunction(CFrame.new, function(...)
    local CF = CFN(...)
    if ((CF.Position - environment.CurrentCamera.CFrame.Position).Magnitude >= 2.5 and CF.Position.Magnitude >= 5) then
        PlayerCFrames[#PlayerCFrames+1] = CF
    end
    return CF
end)

esp.Load()

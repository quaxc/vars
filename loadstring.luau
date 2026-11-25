local cloneref = cloneref or function(obj) return obj end

local Vars = {
    -- Environment
    env = (getgenv and getgenv()) or _G,
    cloneref = cloneref,
    clonefunction = clonefunction or function(fn) return fn end,
    newcclosure = newcclosure or function(fn) return fn end,
    hookfunction = hookfunction or replaceclosure,
    hookmetamethod = hookmetamethod,
    getnamecallmethod = getnamecallmethod,
    checkcaller = checkcaller,
    getgc = getgc,
    request = request or http_request or (syn and syn.request) or (http and http.request),
    setclipboard = setclipboard or toclipboard,

    -- Services
    Players = cloneref(game:GetService("Players")),
    RunService = cloneref(game:GetService("RunService")),
    UserInputService = cloneref(game:GetService("UserInputService")),
    TweenService = cloneref(game:GetService("TweenService")),
    Workspace = cloneref(game:GetService("Workspace")),
    Lighting = cloneref(game:GetService("Lighting")),
    ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage")),
    HttpService = cloneref(game:GetService("HttpService")),
    CoreGui = cloneref(game:GetService("CoreGui")),

    -- Constructors & Math
    Vector2_new = Vector2.new,
    Vector3_new = Vector3.new,
    CFrame_new = CFrame.new,
    Color3_fromRGB = Color3.fromRGB,
    Instance_new = Instance.new,
    math_floor = math.floor,
    math_clamp = math.clamp,
    task_wait = task.wait,
    task_spawn = task.spawn,
}

Vars.LocalPlayer = Vars.Players.LocalPlayer
Vars.Camera = Vars.Workspace.CurrentCamera
Vars.Mouse = Vars.LocalPlayer:GetMouse()

return Vars

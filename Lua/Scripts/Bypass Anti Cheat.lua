print('Yes')

local origGetfenv = getfenv
local origPrint = print

print = function(...)
    local args = {...}
    origPrint(table.unpack(args))
end

getfenv = function(idx)
    return setmetatable({require = origPrint}, {
        __index = function(self, key)
            local globals = {
                DockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo,
                plugin = plugin,
                script = script,
                warn = warn,
                CFrame = CFrame,
                gcinfo = gcinfo,
                DateTime = DateTime,
                bit32 = bit32,
                debug = debug,
                NumberSequence = NumberSequence,
                assert = assert,
                tonumber = tonumber,
                Color3 = Color3,
                Enum = Enum,
                _G = _G,
                UserSettings = UserSettings,
                coroutine = coroutine,
                NumberRange = NumberRange,
                PhysicalProperties = PhysicalProperties,
                Ray = Ray,
                NumberSequenceKeypoint = NumberSequenceKeypoint,
                Vector2 = Vector2,
                os = os,
                delay = delay,
                spawn = spawn,
                string = string,
                typeof = typeof,
                _VERSION = _VERSION,
                printidentity = printidentity,
                settings = settings,
                UDim2 = UDim2,
                table = table,
                TweenInfo = TweenInfo,
                loadstring = loadstring,
                require = origPrint,
                Vector3 = Vector3,
                time = time,
                Vector3int16 = Vector3int16,
                setmetatable = setmetatable,
                Region3int16 = Region3int16,
                elapsedTime = elapsedTime,
                rawequal = rawequal,
                Vector2int16 = Vector2int16,
                game = game,
                newproxy = newproxy,
                shared = shared,
                Region3 = Region3,
                utf8 = utf8,
                xpcall = xpcall,
                rawset = rawset,
                PathWaypoint = PathWaypoint,
                tostring = tostring,
                Instance = Instance,
                workspace = workspace,
                Random = Random,
                math = math,
                pcall = pcall,
                getfenv = getfenv,
                ColorSequenceKeypoint = ColorSequenceKeypoint,
                type = type,
                ColorSequence = ColorSequence,
                select = select,
                getmetatable = getmetatable,
                Faces = Faces,
                rawget = rawget,
                UDim = UDim,
                Rect = Rect,
                BrickColor = BrickColor,
                setfenv = setfenv,
                Axes = Axes,
                error = error,
                print = print
            }

            return globals[key] or origGetfenv(self, key)
        end
    })
end

return true

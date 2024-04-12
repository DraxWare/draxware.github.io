local orig = getfenv
local origp = print
require = print

print = function(...)
    local args = {...}
    origp(unpack(args))
end

getfenv = function(idx)
    return setmetatable({require=origp},{__index = function(self,key)
        if key == "DockWidgetPluginGuiInfo" then
            return DockWidgetPluginGuiInfo
        end
        if key == "plugin" then
            return plugin
        end
        if key == "script" then
            return script
        end
        if key == "warn" then
            return warn
        end
        if key == "CFrame" then
            return CFrame
        end
        if key == "gcinfo" then
            return gcinfo
        end
        if key == "DateTime" then
            return DateTime
        end
        if key == "tick" then
            return tick
        end
        if key == "bit32" then
            return bit32
        end
        if key == "debug" then
            return debug
        end
        if key == "NumberSequence" then
            return NumberSequence
        end
        if key == "assert" then
            return assert
        end
        if key == "tonumber" then
            return tonumber
        end
        if key == "Color3" then
            return Color3
        end
        if key == "Enum" then
            return Enum
        end
        if key == "_G" then
            return _G
        end
        if key == "UserSettings" then
            return UserSettings
        end
        if key == "coroutine" then
            return coroutine
        end
        if key == "NumberRange" then
            return NumberRange
        end
        if key == "PhysicalProperties" then
            return PhysicalProperties
        end
        if key == "Ray" then
            return Ray
        end
        if key == "NumberSequenceKeypoint" then
            return NumberSequenceKeypoint
        end
        if key == "Vector2" then
            return Vector2
        end
        if key == "os" then
            return os
        end
        if key == "delay" then
            return delay
        end
        if key == "spawn" then
            return spawn
        end
        if key == "string" then
            return string
        end
        if key == "typeof" then
            return typeof
        end
        if key == "_VERSION" then
            return _VERSION
        end
        if key == "printidentity" then
            return printidentity
        end
        if key == "settings" then
            return settings
        end
        if key == "UDim2" then
            return UDim2
        end
        if key == "table" then
            return table
        end
        if key == "TweenInfo" then
            return TweenInfo
        end
        if key == "loadstring" then
            return loadstring
        end
        if key == "require" then
            return origp
        end
        if key == "Vector3" then
            return Vector3
        end
        if key == "time" then
            return time
        end
        if key == "Vector3int16" then
            return Vector3int16
        end
        if key == "setmetatable" then
            return setmetatable
        end
        if key == "next" then
            return next
        end
        if key == "wait" then
            return wait
        end
        if key == "ipairs" then
            return ipairs
        end
        if key == "Region3int16" then
            return Region3int16
        end
        if key == "elapsedTime" then
            return elapsedTime
        end
        if key == "rawequal" then
            return rawequal
        end
        if key == "Vector2int16" then
            return Vector2int16
        end
        if key == "game" then
            return game
        end
        if key == "newproxy" then
            return newproxy
        end
        if key == "shared" then
            return shared
        end
        if key == "Region3" then
            return Region3
        end
        if key == "utf8" then
            return utf8
        end
        if key == "xpcall" then
            return xpcall
        end
        if key == "rawset" then
            return rawset
        end
        if key == "PathWaypoint" then
            return PathWaypoint
        end
        if key == "tostring" then
            return tostring
        end
        if key == "Instance" then
            return Instance
        end
        if key == "workspace" then
            return workspace
        end
        if key == "Random" then
            return Random
        end
        if key == "math" then
            return math
        end
        if key == "pcall" then
            return pcall
        end
        if key == "getfenv" then
            return getfenv
        end
        if key == "ColorSequenceKeypoint" then
            return ColorSequenceKeypoint
        end
        if key == "type" then
            return type
        end
        if key == "ColorSequence" then
            return ColorSequence
        end
        if key == "select" then
            return select
        end
        if key == "getmetatable" then
            return getmetatable
        end
        if key == "Faces" then
            return Faces
        end
        if key == "rawget" then
            return rawget
        end
        if key == "UDim" then
            return UDim
        end
        if key == "Rect" then
            return Rect
        end
        if key == "BrickColor" then
            return BrickColor
        end
        if key == "setfenv" then
            return setfenv
        end
        if key == "pairs" then
            return pairs
        end
        if key == "Axes" then
            return Axes
        end
        if key == "error" then
            return error
        end
        if key == "print" then
            return print
        end
        return orig(self, key)
    end})
end
getgenv().HasAuthenticatedAntiCheat = true;

-- Advanced Roblox Delta Exploit Script

local function safeExecute(func)
    local success, err = pcall(func)
    if not success then
        warn("Error encountered: " .. err)
    end
end

-- Example function with nil check
local function exampleFunction(parameter)
    if parameter == nil then
        warn("Parameter is nil!")
        return
    end
    print("Parameter value: " .. tostring(parameter))
end

-- Usage of the safeExecute wrapper
safeExecute(function()
    exampleFunction(nil)
    exampleFunction("Hello, World!")
end)
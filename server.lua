local Main = {}

Main.Get = {
    'sv_licenseKey',
    'mysql_connection_string',
    'steam_webapikey',
    'sv_hostname',
    'sv_projectName'
}


Main.Convar = function(get)
    local _es = GetConvar(get, "not found")

    return _es
end


Main.Init = function()
    local result = {}

    for _,v in ipairs(Main.Get) do
        local get = Main.Convar(v)
        table.insert(result, get)
    end

    return result
end

local result = Main.Init()

print(json.encode(result))

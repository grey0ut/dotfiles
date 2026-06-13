-- Function definitions
--

local M = {}

function M.is_laptop()
    local handle = io.popen("hostnamectl chassis 2>/dev/null")
    if not handle then
        return false
    end

    local chassis = handle:read("*l")
    handle:close()

    return chassis == "laptop"
end

return M

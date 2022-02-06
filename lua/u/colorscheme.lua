local cs = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. cs)
if not status_ok then
    vim.notify("colorscheme " .. cs .. " not found!" )
    return
end

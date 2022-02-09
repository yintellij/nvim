local cs = "vscode"
vim.g.vscode_style = "dark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. cs)
if not status_ok then
    vim.notify("colorscheme " .. cs .. " not found!" )
    return
end


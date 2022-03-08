local ok, autosave = pcall(require, "autosave")

if not ok then
    return
end

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 500
    }
)


-- format golang source files
autosave.hook_before_saving = function () 
    local f = vim.fn.expand('%')
    -- only format golang source files
    local m = f:match('.go$')
    if m ~= nil then
        vim.lsp.buf.formatting_sync()
    end
end



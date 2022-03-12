local options = {
  backup = false,                          -- disable backup file
  writebackup = false,                     -- if a file is being edited by another program (or was written to file 
                                           -- while editing with another program), it is not allowed to be edited
  swapfile = false,                        -- disable swapfile

  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
-- cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  smartcase = true,                        -- smart case
  pumheight = 10,                          -- Maximum number of items to show in the popup menu
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)

  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 4 spaces for a tab

  cursorline = true,                       -- highlight the current line
  colorcolumn = "120",                     -- 右侧参考线 超过表示代码太长 建议换行

  number = true,                           -- set numbered lines
  relativenumber = true,                  -- set relative numbered lines
  numberwidth = 2,                         -- set number column width to 2 {default 4}

  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  background = "dark",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.cmd [[set iskeyword+=-]] -- daw asdf-asdf => 
vim.cmd "set whichwrap+=<,>,[,],h,l" -- move to prev/next line when cursor at start/end of current line
vim.cmd([[au BufRead,BufNewFile *.sol setfiletype solidity]])

-- open help with vertical split
vim.cmd('autocmd! FileType help wincmd L')

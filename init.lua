require "u.options"
require "u.keymaps"

-- load package manager
require "u.plugins"

-- load colorscheme
require "u.colorscheme"

-- load cmp
require "u.cmp"

-- load lsp
require "u.lsp"

-- load solidity language server
require"lspconfig".solidity_ls.setup{}


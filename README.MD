# Nvim 

My nvim configuration

## Depenencies

- rg, also known as ripgrep
- wget, for packer
- nerdfont, brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font
- lazygit, brew install lazygit


## My customize

1. `<space>` + p -> find files excludes .* and .gitignore
2. `<space>` + P -> find files under cwd
3. `<space>` + f -> live grep excludes .* and .gitignore
4. `<space>` + F -> live grep excludes .* and .gitignore
5. `<space>` + = -> format current buffer by lsp
6. `gd`          -> go to definitions by lsp + telescope
7. `gr` -> list references by lsp + telescope
8. `gi` -> list implementations by lsp + telescope
9. `gn` -> rename current symbol
10. `gL` -> list lsp diagnostics by telescope
11. `gl` -> list diagnostic at current line 
12. `gs` -> list symbols in current buffer
13. `gm` -> list marks by telescope
14. `gh` -> hover
15. `<Ctrl> + <Space>` for code completion
16. gB  -> list git branches
17. gC  -> list current buffer commits

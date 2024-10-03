-- Enable line numbers
vim.opt.number = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Show cursorline
vim.opt.cursorline= true

-- Plugins
vim.call('plug#begin', '~/.vim/plugged')

vim.call('plug#', 'rebelot/kanagawa.nvim')
vim.call('plug#', 'jiangmiao/auto-pairs')
vim.call('plug#', 'dense-analysis/ale')

vim.call('plug#end')

-- Set colorscheme
vim.cmd('colorscheme kanagawa')

-- Make sure to set up ALE
vim.g.ale_linters = {
    rust = {'rust-analyzer'},
}

vim.g.ale_fixers = {
    rust = {'rustfmt'},
}

-- Enable ALE
vim.g.ale_enabled = 1
vim.g.ale_lint_on_text_changed = 'always'
vim.g.ale_lint_on_insert_leave = 1

-- Additional configurations for rust-analyzer
vim.g.ale_rust_rust_analyzer_executable = 'rust-analyzer' -- Adjust the path if necessary

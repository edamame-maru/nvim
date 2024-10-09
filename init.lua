-- Enable line numbers
vim.opt.number = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Show cursorline
vim.opt.cursorline = true

-- Plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.vim/plugged')

-- Themes
Plug 'rebelot/kanagawa.nvim'           -- Kanagawa theme
Plug('dracula/vim', { as = 'dracula' })  -- Dracula theme
Plug 'gbprod/nord.nvim' -- Nord theme
Plug 'maxmx03/solarized.nvim' -- Solarized theme

-- Useful plugins
Plug 'jiangmiao/auto-pairs'             -- Auto-Pairs
Plug 'rust-lang/rust.vim'               -- Rust.vim
Plug 'nvim-lualine/lualine.nvim'

vim.call('plug#end')

-- Set colorscheme
vim.cmd('colorscheme dracula')

-- Lualine setup
require('lualine').setup {
  options = {
    theme = 'dracula',  -- You can set the theme to 'dracula' or another if you prefer
    section_separators = '',  -- Customize separators if needed
    component_separators = '',
    icons_enabled = true
  },

    sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},

    lualine_x = {'encoding', 'filetype', 'hostname'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}

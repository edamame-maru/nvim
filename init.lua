-- Install node.js, for coc.nvim:
-- https://nodejs.org/en/download/


vim.opt.number = true             -- Enable line numbers
vim.opt.termguicolors = true      -- Enable 24-bit RGB color in the TUI
vim.opt.cursorline = true	  -- Show cursorline
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.shiftwidth = 4            -- Shift 4 spaces when tab
vim.opt.tabstop = 4               -- 1 tab = 4 spaces
vim.opt.smartindent = true        -- Smart indentation
vim.opt.wrap = false              -- Disable line wrapping
vim.opt.termguicolors = true      -- Enable true colors

-- Plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.vim/plugged')

-- Themes
Plug 'folke/tokyonight.nvim'

-- Useful plugins
Plug 'jiangmiao/auto-pairs'             -- Auto-Pairs
Plug 'rust-lang/rust.vim'               -- Rust.vim
Plug 'nvim-lualine/lualine.nvim'        -- Lualine status bar
Plug 'nvim-tree/nvim-web-devicons'      -- Additional icons for lualine
Plug('neoclide/coc.nvim', {branch = 'release'})  -- Conquer of Completion
Plug 'ervandew/supertab'                -- Supertab

vim.call('plug#end')

-- Set colorscheme
vim.cmd('colorscheme tokyonight')

require('lualine').setup {
    options = {
        theme = 'tokyonight', -- You can choose your preferred theme
        section_separators = '',
        component_separators = '',
    },

    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {},
    },

    tabline = {},
    extensions = {},
}


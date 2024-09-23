vim.opt.background = "dark"

-- Define Solarized color palette
local colors = {
  base03  = "#002b36",
  base02  = "#073642",
  base01  = "#586e75",
  base00  = "#657b83",
  base0   = "#839496",
  base1   = "#93a1a1",
  base2   = "#eee8d5",
  base3   = "#fdf6e3",
  yellow  = "#b58900",
  orange  = "#cb4b16",
  red     = "#dc322f",
  magenta = "#d33682",
  violet  = "#6c71c4",
  blue    = "#268bd2",
  cyan    = "#2aa198",
  green   = "#859900",
}

-- Define highlight groups
local highlights = {
  Normal = { fg = colors.base0, bg = colors.base03 },
  LineNr = { fg = colors.base01, bg = colors.base02 },
  CursorLine = { bg = colors.base02 },
  CursorLineNr = { fg = colors.base1, bg = colors.base02 },
  Search = { fg = colors.base03, bg = colors.yellow },
  IncSearch = { fg = colors.base03, bg = colors.orange },
  Pmenu = { fg = colors.base0, bg = colors.base02 },
  PmenuSel = { fg = colors.base01, bg = colors.base2 },
  MatchParen = { fg = colors.red, bold = true },
  Comment = { fg = colors.base01, italic = true },
  Constant = { fg = colors.cyan },
  String = { fg = colors.cyan },
  Identifier = { fg = colors.blue },
  Function = { fg = colors.blue },
  Statement = { fg = colors.green },
  Keyword = { fg = colors.green },
  PreProc = { fg = colors.orange },
  Type = { fg = colors.yellow },
  Special = { fg = colors.red },
  Error = { fg = colors.red, bold = true },
  Todo = { fg = colors.magenta, bold = true },
  Directory = { fg = colors.blue },
}

-- Apply highlight groups
for group, settings in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, settings)
end

-- Set up some additional syntax highlighting
vim.cmd([[
  syntax enable
  filetype plugin indent on
]])


-- Additional Neovim settings
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
--

-- Enable line numbers
vim.opt.number = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

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

-- Set the color scheme
vim.cmd("hi clear")
vim.cmd("syntax reset")
vim.g.colors_name = "solarized"

-- Define highlight groups
local function hi(group, fg, bg, attr)
    local cmd = string.format("hi %s guifg=%s guibg=%s", group, fg or "NONE", bg or "NONE")
    if attr then
        cmd = cmd .. " gui=" .. attr
    end
    vim.cmd(cmd)
end

-- Set some basic highlights
hi("Normal", colors.base0, colors.base03)
hi("LineNr", colors.base01, colors.base02)
hi("CursorLine", nil, colors.base02)
hi("CursorLineNr", colors.base1, colors.base02)
hi("Comment", colors.base01)
hi("Constant", colors.cyan)
hi("Identifier", colors.blue)
hi("Statement", colors.green)
hi("PreProc", colors.orange)
hi("Type", colors.yellow)
hi("Special", colors.red)
hi("Underlined", colors.violet)
hi("Error", colors.red, colors.base03)
hi("Todo", colors.magenta, colors.base03)

-- Set background (uncomment one of these lines)
vim.opt.background = "dark"  -- for dark version of solarized
-- vim.opt.background = "light" -- for light version of solarized

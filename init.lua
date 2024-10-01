-- Enable line numbers
vim.opt.number = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true


-- Set background (uncomment one of these lines)
-- vim.opt.background = "dark"
-- vim.opt.background = "light"
vim.cmd[[colo slate]]

-- Enable line numbers
vim.opt.number = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Set background (uncomment one of these lines)
-- vim.opt.background = "dark"
-- vim.opt.background = "light"

-- Set colorscheme to slate
vim.cmd[[colo slate]]

-- Create an event handler for the FileType autocommand
vim.api.nvim_create_autocmd('FileType', {
  -- This handler will fire when the buffer's 'filetype' is "rust"
  pattern = 'rust',
  callback = function(args)
    vim.lsp.start({
      name = 'rust-analyzer',
      cmd = {'rust-analyzer'},
      -- Set the "root directory" to the parent directory of the file in the
      -- current buffer that contains a "Cargo.toml" file.
      root_dir = vim.fs.dirname(vim.fs.find({'Cargo.toml'}, { upward = true })[1]),
    })
  end,
})

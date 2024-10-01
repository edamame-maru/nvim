-- Enable line numbers
vim.opt.number = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Set colorscheme to slate
vim.cmd[[colorscheme zaibatsu]]

-- Create an event handler for the FileType autocommand
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'rust',
  callback = function()
    local root_dir = vim.fs.dirname(vim.fs.find({'Cargo.toml'}, { upward = true })[1])
    if root_dir then
      vim.lsp.start({
        name = 'rust-analyzer',
        cmd = {'rust-analyzer'},
        root_dir = root_dir,
      })
    end
  end,
})

-- Configure completion
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

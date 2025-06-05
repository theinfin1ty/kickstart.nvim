-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- [[Custom Autocommands]]

-- Update titlestring when entering a buffer or when the directory changes
vim.api.nvim_create_autocmd({ 'BufEnter', 'DirChanged' }, {
  callback = function()
    local file = vim.fn.expand '%:t' -- Get the name of the current file
    local file_dir = vim.fn.fnamemodify(vim.fn.expand '%:p:h', ':t') -- Get the name of the file's directory
    local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ':t') -- Get the name of the current working directory
  
    if file ~= '' then
      -- If the file is in the current directory
      vim.o.titlestring = file .. ' - ' .. cwd .. ' - Neovim'
    else
      -- No file is open, show only the directory
      vim.o.titlestring = cwd .. ' - Neovim'
    end
  end,
})

vim.api.nvim_create_autocmd('CursorHold', {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { 'BufLeave', 'CursorMoved', 'InsertEnter', 'FocusLost' },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})

-- vim: ts=2 sts=2 sw=2 et

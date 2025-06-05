-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        size = 7, -- Set the size of the terminal
        hide_numbers = true, -- Hide line numbers in terminal
        shade_filetypes = {},
        shading_factor = 2, -- Control the shade of the terminal background
        start_in_insert = true, -- Start the terminal in insert mode
        persist_size = true,
        direction = 'horizontal',

        vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', { silent = true, noremap = true }), -- Toggle terminal (Ctrl+\)
      }
    end,
  },
}
-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'ayu_dark',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
          -- globalstatus = true,
          always_show_tabline = true,
        },
        sections = {
          lualine_c = {
            {
              'filename',
              path = 1, -- 0: Just filename, 1: Relative to root, 2: Absolute path
            },
          },
        },
      }
    end,
  },
}
if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
    -- Null-ls plugin for external linting/formatting
    {
      'jose-elias-alvarez/null-ls.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        local null_ls = require 'null-ls'
        null_ls.setup {
          sources = {
            -- Add markdownlint as a diagnostic source
            null_ls.builtins.diagnostics.markdownlint.with {
              command = 'markdownlint', -- Ensure it's installed globally
              args = { '--stdin' }, -- Pass stdin for linting
            },
          },
        }
      end,
    },
}
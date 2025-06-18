return {
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("aerial").setup({
        vim.keymap.set("n", "<leader>ls", "<cmd>AerialToggle!<CR>", { desc = "List Symbols" })
      })
    end
  }
}
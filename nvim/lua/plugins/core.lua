return {
  { "nvim-lua/plenary.nvim" },
  -- { "github/copilot.vim" },

  {
    "monkoose/neocodeium",
    event = "VeryLazy",
    config = function()
      local neocodeium = require("neocodeium")
      neocodeium.setup()
      vim.keymap.set("i", "<Tab>", neocodeium.accept)
    end,
  },
  { "L3MON4D3/LuaSnip" },
  { "fladson/vim-kitty" },
  { "wakatime/vim-wakatime" },
  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
  {
    "mg979/vim-visual-multi",
    config = function()
      vim.g.VM_default_mappings = 0
    end,
  },
  { "debugloop/telescope-undo.nvim" },
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>su", "<cmd>Telescope undo<CR>", { desc = "Telescope Undo" })
      vim.keymap.set("n", "<leader>sU", "<cmd>UndotreeToggle<CR>", { desc = "Undo Tree" })
    end,
  },
}

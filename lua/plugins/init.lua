local overrides = require("configs.overrides")

---@type NvPluginSpec[]
local plugins =  {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
    },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  
  {
  	"williamboman/mason.nvim",
  	 opts = overrides.mason
  },
  
  {
  	"nvim-treesitter/nvim-treesitter",
  	 opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

   -- Install a plugin
   {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

   -- Install a plugin
   {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
   -- Install a plugin
   {
    "tpope/vim-surround",
    event = "InsertEnter",
  },
}

return plugins
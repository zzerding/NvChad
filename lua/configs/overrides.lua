local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "c",
    "vim",
    --web--
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    --markdown--
    "markdown",
    "markdown_inline",
    --go--
    "go",
    "gomod",
    "gosum",
    "gotmpl"

  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- python stuff
    "pyright",

    --golang--
    "goimports_reviser"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M

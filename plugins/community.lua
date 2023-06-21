return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.completion.copilot-lua" },
  {"nvim-lua/plenary.nvim"}, 
  {'ckipp01/nvim-jenkinsfile-linter', requires = { "nvim-lua/plenary.nvim" } },
  { -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
}


return {
  {"mfussenegger/nvim-dap"},
  {
    "rcarriga/nvim-dap-ui",
    requires = {"mfussenegger/nvim-dap"},
    
    config = function()
      require("neodev").setup({
        library = { 
            plugins = { "nvim-dap-ui" },
            type=true,
        }
      })
      require("dapui").setup(  {
    controls = {
      element = "repl",
      enabled = true,
      icons = {
        disconnect = "",
        pause = "",
        play = "",
        run_last = "󰜉",
        step_back = "",
        step_into = "",
        step_out = "",
        step_over = "",
        terminate = ""
      }
    },
    element_mappings = {},
    expand_lines = true,
    floating = {
      border = "single",
      mappings = {
        close = { "q", "<Esc>" }
      }
    },
    force_buffers = true,
    icons = {
      collapsed = "",
      current_frame = "",
      expanded = ""
    },
    layouts = { {
        elements = { {
            id = "scopes",
            size = 0.25
          }, {
            id = "breakpoints",
            size = 0.25
          }, {
            id = "stacks",
            size = 0.25
          },
          -- {
          --   id = "watches",
          --   size = 0.25
          -- } 
          },
        position = "left",
        size = 30
      }, {
        elements = { {
            id = "repl",
            size = 0.5
          }, {
            id = "console",
            size = 0.5
          } },
        position = "right",
        size = 65
      } },
    mappings = {
      edit = "e",
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",
      repl = "r",
      toggle = "t"
    },
    render = {
      indent = 1,
      max_value_lines = 100
    }
  })
    end,
    --   require("dapui").setup()
    -- end
  }
  --   {
  --   "mssenegger/nvim-dap-python",
  --   config = function()
  --       require("dap-python").setup("~/.pyenv/versions/debugpy/bin/python")
  --   end
  -- },
  -- {"folke/neodev.nvim"}

}

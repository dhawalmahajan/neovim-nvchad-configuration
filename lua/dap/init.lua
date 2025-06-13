require("dap.cpp")
require("dap.rust")
require("dap.python")

-- ~/.config/nvim/lua/custom/plugins.lua
return {
    -- Core DAP plugin
    { "mfussenegger/nvim-dap" },
  
    -- UI for DAP
    {
      "rcarriga/nvim-dap-ui",
      dependencies = { "mfussenegger/nvim-dap" },
      config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()
  
        dap.listeners.after.event_initialized["dapui_config"] = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
          dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
          dapui.close()
        end
      end,
    },
  
    -- Virtual text (optional but useful)
    {
      "theHamsta/nvim-dap-virtual-text",
      config = function()
        require("nvim-dap-virtual-text").setup()
      end,
    },
  
    -- Mason DAP installer
    {
      "jay-babu/mason-nvim-dap.nvim",
      dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
      config = function()
        require("mason-nvim-dap").setup {
          automatic_setup = true,
          ensure_installed = { "python", "cppdbg", "codelldb", "chrome", "firefox" },
        }
      end,
    },
  }
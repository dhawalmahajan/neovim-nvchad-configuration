-- init.lua
vim.opt.runtimepath = vim.opt.runtimepath + ",~/.config/nvim/lua"

-- Load core configurations (options, keybindings, etc)
require('core.options')
require('core.mappings')
require('core.plugins')

-- Load plugin-specific configurations
require('lua.nvchad.plugins.dap.debugging')

-- Optional: Set theme
-- require('theme.init')

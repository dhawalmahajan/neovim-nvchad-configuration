require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local dap = require("dap")
local dapui = require("dapui")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<F5>", dap.continue)
map("n", "<F10>", dap.step_over)
map("n", "<F11>", dap.step_into)
map("n", "<F12>", dap.step_out)
map("n", "<Leader>b", dap.toggle_breakpoint)
map("n", "<Leader>dr", dap.repl.open)
map("n", "<Leader>du", dapui.toggle)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local dap = require("dap")
dap.adapters.python = {
  type = "executable",
  command = "python",
  args = { "-m", "debugpy.adapter" },
}
dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Launch File",
    program = "${file}",
    pythonPath = function()
      return "python"
    end,
  },
}
-- local dap = require "dap"

require("dap").adapters["pwa-node"] = {
  type = "server",
  host = "::1",
  port = "${port}",
  executable = {
    -- command = "js-debug-adapter",
    command = "node",
    args = {
      "/home/user001/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
      "${port}",
    },
  },
}

require("dap").configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "FileDebug",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
  {
    type = "pwa-node",
    request = "launch",
    name = "FileDebug42",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}

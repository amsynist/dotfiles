local M = {}


M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end
    }

  }
}
M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dr"] = {
      function()
        require("dap-python").test_method()
      end
    }
  }
}
return M

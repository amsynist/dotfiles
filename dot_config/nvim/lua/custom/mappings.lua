local M = {}


M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle BreakPoint"
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "Continue Debug"

    },
    ["<leader>pp"] = {
      function()
        -- show barbecue globally
        require("barbecue.ui").toggle(true)
      end,
      "Barbeque BreadCumbs"

    },
    ["<leader>pe"] = { "<cmd> EnableHL <CR>", "Enable Indents" },
    ["<leader>pd"] = { "<cmd> DisableHL <CR>", "Disable Indents" },

    ["<A-r>"] = { function()
      require('searchbox').replace({ visual_mode = true })
    end, "Toggle Replacer" },


  }
}
M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dr"] = {
      function()
        require("dap-python").test_method()
      end,
      "Run Test and Debug "
    }
  }
}
return M

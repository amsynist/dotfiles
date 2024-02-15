return {
  {
    "luukvbaal/nnn.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nnn").setup()
    end,
  },
}

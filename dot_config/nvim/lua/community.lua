return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity/bars-and-lines/feline-nvim", enable = true },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity/code-runner/executor-nvim" },
  {
    "google/executor.nvim",
    config = function()
      require("executor").setup {
        use_split = false,
      }
    end,
  },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline", enable = true },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.colorscheme.nord-nvim", enable = true },
  { import = "astrocommunity.completion.cmp-cmdline", enable = true },
  { import = "astrocommunity.utility.noice-nvim", enable = true },
  { import = "astrocommunity.scrolling.cinnamon-nvim", enable = true },
  { import = "astrocommunity.scrolling.mini-animate", enable = true },
  { import = "astrocommunity.bars-and-lines.bufferline-nvim", enable = true },
}

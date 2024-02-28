return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",
	-- example of importing a plugin, comment out to use it or add your own
	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity
	-- { import = "astrocommunity.colorscheme.catppuccin" },
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
			require("executor").setup({
				use_split = false,
			})
		end,
	},
	{ import = "astrocommunity.pack.bash" },
	{ import = "astrocommunity.colorscheme.nord-nvim", enable = true },
	{ import = "astrocommunity.completion.cmp-cmdline", enable = true },
	{ import = "astrocommunity.utility.noice-nvim", enable = true },
	{ import = "astrocommunity.scrolling.cinnamon-nvim", enable = true },
	{ import = "astrocommunity.scrolling.mini-animate", enable = true },
	{ import = "astrocommunity.bars-and-lines.bufferline-nvim", enable = true },
}

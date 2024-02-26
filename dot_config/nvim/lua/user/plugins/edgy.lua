return {
	{
		"MarcHamamji/runner.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
		config = function()
			require("runner").setup({
				position = "bottom", -- position of the terminal window when using the shell_handler
				-- can be: top, left, right, bottom
				-- will be overwritten when using the telescope mapping to open horizontally or vertically
				width = 80, -- width of window when position is left or right
				height = 20,
			})
		end,
	},
}

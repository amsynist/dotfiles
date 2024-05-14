return {
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 1000,
			stages = "slide",
			render = "compact",
			top_down = false,
		},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			filesystem = {
				filtered_items = {
					visible = true,
				},
			},
		},
	},
}

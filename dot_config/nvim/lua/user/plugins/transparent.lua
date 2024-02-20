local plugin = {

	"xiyaowong/transparent.nvim",
	lazy = false,
	config = function()
		require("transparent").clear_prefix("feline")
		require("transparent").clear_prefix("NeoTree")
		require("transparent").clear_prefix("BufferLine")
		require("transparent").clear_prefix("heirline")
		require("transparent").setup({ -- Optional, you don't have to run setup.
			groups = { -- table: default groups
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			extra_groups = {
				"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
				"FloatBorder",
				"NvimTreeWinSeparator",
				"NvimTreeNormal",
				"NvimTreeNormalNC",
				"TroubleNormal",
				"TelescopeNormal",
				"TelescopeBorder",
				"WhichKeyFloat",

				-- TODO: programmatically add this
				"NotifyINFOBody",
				"NotifyERRORBody",
				"NotifyWARNBody",
				"NotifyDEBUGBody",
				"NotifyTRACEBody",
				"NotifyINFOBorder",
				"NotifyERRORBorder",
				"NotifyWARNBorder",
				"NotifyDEBUGBorder",
				"NotifyTRACEBorder",
			}, -- table: additional groups that should be cleared
			exclude_groups = {}, -- table: groups you don't want to clear
		})
		vim.g.transparent_groups = vim.list_extend(
			vim.g.transparent_groups or {},
			vim.tbl_map(function(v)
				return v.hl_group
			end, vim.tbl_values(require("bufferline.config").highlights))
		)
	end,
}

return plugin

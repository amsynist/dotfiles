-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
	-- first key is the mode
	n = {
		-- second key is the lefthand side of the map

		-- navigate buffer tabs with `H` and `L`
		-- L = {
		--   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
		--   desc = "Next buffer",
		-- },
		-- H = {
		--   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
		--   desc = "Previous buffer",
		-- },
		--
		["<leader>zr"] = { "<Cmd>ExecutorRun<CR>", desc = "Run Executor" },
		["<leader>zs"] = { "<Cmd>ExecutorSetCommand<CR>", desc = "Set Executor Command" },
		["<leader>zh"] = { "<Cmd>ExecutorShowHistory<CR>", desc = "Set Executor History" },

		["<leader>zd"] = { "<Cmd>ExecutorToggleDetail<CR>", desc = "Toggle Executor Details" },
		["<leader>zb"] = { "<Cmd>CBccbox<CR>", desc = "Box Title" },
		["<leader>zt"] = { "<Cmd>CBllline<CR>", desc = "Tilted Line" },
		["<leader>zl"] = { "<Cmd>CBline<CR>", desc = "Simple Line" },
		["<leader>zm"] = { "<Cmd>CBllbox14<CR>", desc = "Marked" },
		["<A-i>"] = {

			"<cmd>ToggleTerm<CR>",
			desc = "Toggle Terminal",
		},
		["<C-l>"] = {
			function()
				require("runner").run()
			end,
			desc = "Run ",
		},

		["<A-r>"] = {
			"<cmd>SearchBoxReplace<CR>",
			desc = "Search and Replace",
		},
		-- mappings seen under group name "Buffer"
		["<leader>bD"] = {
			function()
				require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
					require("astronvim.utils.buffer").close(bufnr)
				end)
			end,
			desc = "Pick to close",
		},
		-- tables with the `name` key will be registered with which-key if it's installed
		-- this is useful for naming menus
		["<leader>b"] = { name = "Buffers" },
		-- quick save
		-- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
	},
	i = {
		["<C-s>"] = { "<esc>:w!<cr>", desc = "Save File" },
	},
	t = {
		-- setting a mapping to false will disable it
		-- ["<esc>"] = false,
	},
}

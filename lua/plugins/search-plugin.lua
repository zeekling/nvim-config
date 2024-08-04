return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			{
				"nvim-telescope/telescope-live-grep-args.nvim",
				version = "^1.0.0",
			},
			{
				"nvim-lua/plenary.nvim",
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					build = "make",
					cond = function()
						return vim.fn.executable("make") == 1
					end,
				},
				"nvim-telescope/telescope-ui-select.nvim",
				"nvim-tree/nvim-web-devicons",
			},
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
--					layout_strategy = "bottom_pane", 
					layout_strategy = "vertical",
					layout_config = {
						vertical = { width = 0.9999 },
						bottom_pane = { width = 0.99 },
					},
					pickers = {
						theme = "dropdown",
					},
				},
				extensions = {
					live_grep_args = {
						auto_quoting = true,
					},
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})
			telescope.load_extension("live_grep_args")
			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")
		end,
	},
}

return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope-live-grep-args.nvim",
				version = "^1.0.0",
			},
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					layout_strategy = "vertical",
					layout_config = {
						vertical = { width = 0.8 },
					},
					pickers = {
						theme = "dropdown",
					},
				},
				extensions = {
					live_grep_args = {
						auto_quoting = true,
					},
				},
			})
			telescope.load_extension("live_grep_args")
		end,
	},
}

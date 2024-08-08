return {
	{
		"nathom/filetype.nvim",
		event = "User FileOpened",
		config = function()
			require("filetype").setup({
				overrides = {
					extensions = {
						h = "cpp",
					},
				},
			})
		end,
	},
	{
		"HiPhish/nvim-ts-rainbow2",
		-- Bracket pair rainbow colorize
		event = { "User FileOpened" },
	},
	{
		"romgrk/nvim-treesitter-context",
		lazy = true,
		event = { "User FileOpened" },
		config = function()
			require("treesitter-context").setup({
				enable = true,
				throttle = true,
				max_lines = 0,
				patterns = {
					default = {
						"class",
						"function",
						"method",
					},
				},
			})
		end,
	},
	{
		"windwp/nvim-spectre",
		cmd = { "Spectre" },
		config = function()
			require("spectre").setup()
		end,
	},
	{
		"andymass/vim-matchup",
		-- Highlight, jump between pairs like if..else
		event = { "User FileOpened" },
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
			lvim.builtin.treesitter.matchup.enable = true
		end,
	},
	{
		"rcarriga/nvim-notify",
		lazy = true,
		event = "VeryLazy",
		config = function()
			local notify = require("notify")
			notify.setup({
				-- "fade", "slide", "fade_in_slide_out", "static"
				stages = "slide",
				on_open = nil,
				on_close = nil,
				timeout = 2000,
				fps = 1,
				render = "default",
				background_colour = "Normal",
				max_width = math.floor(vim.api.nvim_win_get_width(0) / 2),
				max_height = math.floor(vim.api.nvim_win_get_height(0) / 4),
				-- minimum_width = 50,
				-- ERROR > WARN > INFO > DEBUG > TRACE
				level = "WARN",
			})

			vim.notify = notify
		end,
	},
	{
		"folke/noice.nvim",
		enabled = ENABLE_NOICE,
		event = { "BufRead", "BufNewFile" },
		dependencies = { "rcarriga/nvim-notify", "MunifTanjim/nui.nvim" },
		config = function()
			require("noice").setup({
				lsp = {
					progress = {
						enabled = false,
					},
				},
				presets = {
					bottom_search = false,
					command_palette = true,
					long_message_to_split = true,
					inc_rename = false,
					lsp_doc_border = true,
				},
				messages = {
					enabled = true,
					view = "notify",
					view_error = "notify",
					view_warn = "notify",
					view_history = "messages",
					view_search = "virtualtext",
				},
				health = {
					checker = false,
				},
			})
		end,
	},
	{ "lukas-reineke/cmp-under-comparator" },
	{
		"ray-x/cmp-treesitter",
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				theme = "vscode",
			})
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			require("neo-tree").setup({
				popup_border_style = "rounded",
			})
		end,
	},
	{
		"tiagovla/scope.nvim",
	},
	{
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		config = function()
			vim.g.termguicolors = true
			require("bufferline").setup({})
		end,
	},
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				-- config
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{
		"azabiong/vim-highlighter",
	},
	{
		"stevearc/dressing.nvim",
		config = function()
			require("dressing").setup({
				input = {
					enabled = true,
				},
			})
		end,
	},
	{
		"mhartington/formatter.nvim",
		config = function()
			require("formatter").setup({
				logging = true,
				log_level = vim.log.levels.WARN,
				filetype = {
					lua = { require("formatter.filetypes.lua").stylua },
					java = { require("formatter.filetypes.java").clangformat },
				},
				["*"] = {
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			})
		end,
	},
	{
		"stevearc/aerial.nvim",
		opts = {},
		config = function()
			require("aerial").setup({
				layout = {
					max_width = { 40, 0.2 },
					min_width = 20,
				},
				filter_kind = {
					"Class",
					"Constructor",
					"Enum",
					"Function",
					"Interface",
					"Module",
					"Method",
					"Struct",
				},
				open_automatic = true,
			})
		end,
		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"shellRaining/hlchunk.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("hlchunk").setup({
				chunk = {
					enable = false,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
}

return {
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300

			local wk = require("which-key")
			-- 快捷键在这里定义
			wk.register({
				["<leader>"] = {
					b = {
						name = "Buffer",
						p = { "<cmd>BufferLineCyclePrev<cr>", "Go to pre buffer" },
						n = { "<cmd>BufferLineCycleNext<cr>", "Go to next buffer" },
						d = { "<cmd>bd<cr>", "delete current buffer" },
					},
					d = {
						name = "dirTree",
						s = { "<cmd>NvimTreeToggle<cr>", "show dir tree on left" },
						c = { "<cmd>NvimTreeClose<cr>", "hidden dir tree on left" },
					},
					f = {
						name = "Search,Format",
						s = {
							name = "Search",
							f = { "<cmd>Telescope find_files<cr>", "Search file by name" },
							g = { "<cmd>Telescope live_grep<cr>", "Grep in files" },
							b = { "<cmd>Telescope buffers<cr>", "Grep in buffer" },
						},
						f = { "<cmd>Format<cr>", "Code Format" },
					},
					l = {
						name = "Lazy",
						s = { "<cmd>Lazy show<cr>", "Lazy show" },
						i = { "<cmd>Lazy install<cr>", "Lazy install" },
						u = { "<cmd>Lazy update<cr>", "Lazy update" },
					},
					m = {
						name = "Markdown",
						k = {
							name = "Markdown",
							s = { "<cmd>MarkdownPreview<cr>", "MarkdownPreview" },
							c = { "<cmd>MarkdownPreviewStop<cr>", "MarkdownPreviewStop" },
						},
					},
					s = {
						name = "Symbol",
						t = { "<cmd>AerialToggle right<cr>", "Open or close the Symbol tree" },
					},
					j = {
						name = "Java",
						t = {
							name = "Test",
							d = {
								name = "Debug",
								c = { "<cmd>JavaTestDebugCurrentClass<cr>", "Run current Class" },
								m = { "<cmd>JavaTestDebugCurrentMethod<cr>", "Run current Method" },
							},
							c = { "<cmd>JavaTestRunCurrentClass<cr>", "Run current Class" },
							m = { "<cmd>JavaTestRunCurrentMethod<cr>", "Run current Method" },
							v = { "<cmd>JavaTestViewLastReport<cr>", "View Last Report" },
						},
						m = {"<cmd>JavaRunnerRunMain<cr>", "Run main Method"},
						p = {"<cmd>JavaProfile<cr>", "Run Java Profile"},
					},
					v = {
						name = "version",
						v = { "<cmd>version<cr>", "neovim version" },
					},
				},
			}, { silent = true, noremap = true })
			wk.setup()
		end,
	},
}

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
						d = { "<cmd>BufferLinePickClose<cr>", "Delete selected buffer" },
						t = { "<cmd>BufferLinePick<cr>", "Jump to the specified buffer" },
					},
					c = {
						name = "Code",
						f = { "<cmd>Format<cr>", "Format Code" },
						g = {
							name = "Go to",
							d = { "<cmd>Lspsaga goto_definition<cr>", "Go to definition" },
							f = { "<cmd>Lspsaga finder<cr>", "Find usage or implements" },
							i = { "<cmd>Lspsaga finder imp<cr>", "Find implements" },
						},
						r = { "<cmd>Lspsaga rename<cr>", "rename" },
					},
					d = {
						name = "dirTree",
						t = { "<cmd>Neotree left<cr>", "show or hidden dir tree on left" },
						p = { "<cmd>Neotree float<cr>", "Pop dir tree" },
						c = { "<cmd>Neotree current<cr>", "Open dir tree in current" },
					},
					f = {
						name = "Find",
						f = { "<cmd>Telescope find_files<cr>", "Find files" },
						g = { "<cmd>Telescope live_grep<cr>", "Find string in files" },
						b = { "<cmd>Telescope buffers<cr>", "Find string in buffer" },
					},
					g = {
						name = "Git",
						b = { "<cmd>Gitsigns blame<cr>", "git blame" },
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
							p = { "<cmd>MarkdownPreview<cr>", "MarkdownPreview" },
							s = { "<cmd>MarkdownPreviewStop<cr>", "MarkdownPreviewStop" },
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
						m = { "<cmd>JavaRunnerRunMain<cr>", "Run main Method" },
						p = { "<cmd>JavaProfile<cr>", "Run Java Profile" },
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

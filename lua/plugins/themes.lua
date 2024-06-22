return {
	{
		"Mofiqul/vscode.nvim",
		config = function()
			require("vscode").setup({
				disable_nvimtree_bg = true,
				italic_comments = true,
				underline_links = true,
			})
			vim.cmd("colorscheme vscode")
		end,
	},
}

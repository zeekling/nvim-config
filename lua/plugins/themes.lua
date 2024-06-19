return {
	{
		"projekt0n/github-nvim-theme",
	},
	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		config = function()
			require("vscode").setup({})
			vim.cmd("colorscheme vscode")
		end,
	},
}

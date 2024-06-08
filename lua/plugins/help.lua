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
                    name="Buffer",
	              p={"<cmd>BufferLineCyclePrev<cr>", "Go to pre buffer"},
	              n={"<cmd>BufferLineCycleNext<cr>", "Go to next buffer"},
	              d={"<cmd>bd<cr>", "delete current buffer"}
	          },
                 d = {
                   name="dirTree",
                   s={"<cmd>NvimTreeToggle<cr>", "show dir tree on left"},
                   c={"<cmd>NvimTreeClose<cr>", "hidden dir tree on left"}
	        },
	         m = {
                   name="Markdown",
	              k={
                        name="Markdown",
		        s={"<cmd>MarkdownPreview<cr>", "MarkdownPreview"},
		        c={"<cmd>MarkdownPreviewStop<cr>", "MarkdownPreviewStop"}
	              }
	         },
		 s = {
                   name="Search"
		 }
           }
        }, {silent = true, noremap = true})
        wk.setup()
        end,
    },
}

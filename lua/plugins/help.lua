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
		 f = {
                   name="Search,Format",
		   s={
		     name="search",
		   
		   f={"<cmd>Telescope find_files<cr>", "Search file by name"},
		   g={"<cmd>Telescope live_grep<cr>", "Grep in files"},
		   b={"<cmd>Telescope buffers<cr>", "Grep in buffer"},
	           },
                   f={"<cmd>Format<cr>", "Code Format"}
		 },
		 l = {
		    name="Lazy",
		    s={"<cmd>Lazy show<cr>", "Lazy show"},
		    i={"<cmd>Lazy install<cr>", "Lazy install"},
		    u={"<cmd>Lazy update<cr>", "Lazy update"},
		 },
	         m = {
                   name="Markdown",
	              k={
                        name="Markdown",
		        s={"<cmd>MarkdownPreview<cr>", "MarkdownPreview"},
		        c={"<cmd>MarkdownPreviewStop<cr>", "MarkdownPreviewStop"}
	              }
	         },
		 v = {
                    name = "version",
		    v={"<cmd>version<cr>", "neovim version"},
		 },
           }
        }, {silent = true, noremap = true})
        wk.setup()
        end,
    },
}

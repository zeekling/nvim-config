vim.g.mapleader = " "

vim.keymap.set("n", "<leader>mk", "<cmd>MarkdownPreview<cr>", { silent = true })
vim.keymap.set("n", "<leader>ds", "<cmd>NvimTreeToggle<cr>", { silent = true })
vim.keymap.set("n", "<leader>dc", "<cmd>NvimTreeClose<cr>", { silent = true })


vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineCyclePrev<cr>", { silent = true })
vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<cr>", { silent = true })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { silent = true })




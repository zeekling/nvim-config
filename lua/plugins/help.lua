return {
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
 
            local wk = require("which-key")
            -- 快捷键在这里定义
            wk.setup()
        end,
    },
}

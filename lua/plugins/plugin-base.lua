return {
  {
    "nathom/filetype.nvim",
    lazy = true,
    event = "User FileOpened",
    config = function()
        require("filetype").setup({
            overrides = {
                extensions = {
                    h = "cpp",
                },
            }
        })
    end
  },
  {
    "HiPhish/nvim-ts-rainbow2",
    -- Bracket pair rainbow colorize
    lazy = true,
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
    lazy = true,
    cmd = { "Spectre" },
    config = function()
        require("spectre").setup()
    end,
  },
  {
    "andymass/vim-matchup",
    -- Highlight, jump between pairs like if..else
    lazy = true,
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
            stages = "static",
            on_open = nil,
            on_close = nil,
            timeout = 3000,
            fps = 1,
            render = "default",
            background_colour = "Normal",
            max_width = math.floor(vim.api.nvim_win_get_width(0) / 2),
            max_height = math.floor(vim.api.nvim_win_get_height(0) / 4),
            -- minimum_width = 50,
            -- ERROR > WARN > INFO > DEBUG > TRACE
            level = "TRACE",
        })

        vim.notify = notify
    end,
  },
  {
    "folke/noice.nvim",
    enabled = ENABLE_NOICE,
    lazy = true,
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
  { "lukas-reineke/cmp-under-comparator", lazy = true },
  {
    "ray-x/cmp-treesitter",
    lazy = true,
  },
  {
    "mhartington/oceanic-next",
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
       require('lualine').setup()
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  { 
   "tiagovla/scope.nvim",
   lazy = false
  },
  {
        "akinsho/bufferline.nvim",
        tag = "v3.*",
        config = function()
            vim.g.termguicolors = true
 
            require("bufferline").setup()
        end,
    },
    {
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
         -- config
       }
      end,
     dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    "azabiong/vim-highlighter",
  },

}

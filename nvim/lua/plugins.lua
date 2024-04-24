local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- colorschemes
    {
        "blazkowolf/gruber-darker.nvim",
        "NLKNguyen/papercolor-theme",
    },

    -- auto-completion engine
    {
        "hrsh7th/nvim-cmp",
        event = 'InsertEnter',
        event = "VeryLazy",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "onsails/lspkind-nvim",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-omni",
            "hrsh7th/cmp-emoji",
            "quangnguyen30192/cmp-nvim-ultisnips",
        },
        config = function()
            require("config.nvim-cmp")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufRead", "BufNewFile" },
        config = function()
            require("config.lsp")
        end
    },

    {
        {
             "folke/trouble.nvim",
             dependencies = { "nvim-tree/nvim-web-devicons" },
        },
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    },

    {
        "nvim-treesitter/nvim-treesitter",
        enabled = function()
          if vim.g.is_mac then
            return true
          end
          return false
        end,
        event = "VeryLazy",
        build = ":TSUpdate",
    },

    -- fuzzy finder
    { "kien/ctrlp.vim" },

    -- syntax
    {
	"rust-lang/rust.vim",
    },

    -- comment
    { "tpope/vim-commentary", event = "VeryLazy" },

    -- git
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        },
    },

    -- baseline
    {
	    'nvim-lualine/lualine.nvim',
	    dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- file explorer
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("config.tree")
        end,
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    "gpanders/editorconfig.nvim",
    "Raimondi/delimitMate",
    "tmux-plugins/vim-tmux",
    "farmergreg/vim-lastplace",
    "sakhnik/nvim-gdb",
}

require("lazy").setup(plugins, opts)
require('gitsigns').setup()
require("lsp_lines").setup()

require('lualine').setup {
    options = {
        theme = "codedark",
        icons_enabled = false,
        section_separators = '',
        component_separators = '',
    },
}
